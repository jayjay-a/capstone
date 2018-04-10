class RentalEquipment < ApplicationRecord
  has_many :rental_lists

  validates :rental_description, presence: true, length: { maximum: 60 }
end
