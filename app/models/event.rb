class Event < ApplicationRecord
    belongs_to :place
    has_many :votes, dependent: :destroy
    has_many :users, through: :votes
end
