class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

# after_create :send_welcome_mail

  has_many :votes, dependent: :destroy
  has_many :events, through: :votes

  def send_welcome_mail
	#  UserMailer.welcome_email(self).deliver_now!
  end

    # creates a new vote row with event_id and user_id
  def vote!(event)
    self.votes.create!(event_id: event.id)
  end

  # destroys a vote with matching event_id and user_id
  def unvote!(event)
    vote = self.votes.find_by_event_id(event.id)
    vote.destroy!
  end

  # returns true of false if a event is voted by user
  def vote?(event)
    self.votes.find_by_event_id(event.id)
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      user.image = auth.info.image # assuming the user model has an image
    end
  end

end