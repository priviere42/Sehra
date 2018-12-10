class Place < ApplicationRecord
    validates :name, presence: true, uniqueness: true

    has_many :events
    belongs_to :city
end
