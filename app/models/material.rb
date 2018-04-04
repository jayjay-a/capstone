class Material < ApplicationRecord
    has_many :material_lists

    validates :material_description, presence: true
end
