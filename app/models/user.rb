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

  def self.find_for_facebook_oauth(auth)
    user = User.where(providor: auth.providor, uid: auth.iud).first
    return user if user
    user = User.where(email: auth.email).first
    return user if user
    User.create(
      name: auth.extra.raw_info.name,
      providor: auth.provider,
      uid: auth.uid,
      email: auth.info.email,
      image: auth.info.image,
      password: Devise.friendly_token[0,20])
  end

end