class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

after_create :send_welcome_mail

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

end