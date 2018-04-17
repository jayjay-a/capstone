class RentalEquipment < ApplicationRecord
  acts_as_paranoid #for soft deletes
  has_many :rental_lists

  # Validations
  validates :rental_description, presence: true, length: { maximum: 60 }
end
