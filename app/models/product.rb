class Product < ApplicationRecord
    has_attached_file :picture
    validates_attachment :picture, content_type: { content_type: /\Aimage\/.*\Z/ }
end
