class Material < ApplicationRecord
    has_many :material_lists

    # Validations
    validates :material_description, presence: true, length: { maximum: 200 }
end
