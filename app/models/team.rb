class Team < ApplicationRecord
    belongs_to :country_id
    validates :country, :name, :logo, presence: true 
    has_attached_file :logo
    validates_attachment :logo, content_type: { content_type: /\Aimage\/.*\Z/ }
end
