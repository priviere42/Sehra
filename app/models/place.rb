class Place < ApplicationRecord
    has_many :events
    belongs_to :city
end
