class Event < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged
    
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true
    validates :place_id, presence: true

    belongs_to :place
    has_many :votes, dependent: :destroy
    has_many :users, through: :votes
    has_one_attached :picture1
    has_one_attached :picture2
    has_one_attached :picture3
end
