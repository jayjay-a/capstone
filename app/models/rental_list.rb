class RentalList < ApplicationRecord
  belongs_to :project
  belongs_to :rental_equipment

  validates :project_id, presence: true, numericality: true
  validates :rental_equipment_id, presence: true, numericality: true
  validates :rental_price, presence: true, numericality: { greater_than_or_equal_to: 0, message: 'has to be 0 or greater' }
  validates :cost_frequency, presence: true, length: { maximum: 30 }
end
