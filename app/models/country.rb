class Country < ApplicationRecord
    validates :name, :flag, presence: true 

end


