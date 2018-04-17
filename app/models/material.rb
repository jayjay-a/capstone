class Material < ApplicationRecord
    acts_as_paranoid #for soft deletes
    has_many :material_lists

    # Validations
    validates :material_description, presence: true, length: { maximum: 200 }
end
