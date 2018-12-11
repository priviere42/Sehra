class City < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged
    
    validates :name, uniqueness: true
    has_one :place
end
