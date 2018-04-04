class RentalList < ApplicationRecord
  belongs_to :project
  belongs_to :rental_equipment

  validates :project_id, presence: true
  validates :rental_equipment_id, presence: true
  validates :rental_price, presence: true
  validates :cost_frequency, presence: true
end
