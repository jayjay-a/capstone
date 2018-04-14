class RentalList < ApplicationRecord
  belongs_to :project
  belongs_to :rental_equipment

  # Validations
  validates :rental_price, numericality: { greater_than_or_equal_to: 0, message: 'has to be 0 or greater' }
  validates :cost_frequency, presence: true, length: { maximum: 30 }, format: { with: /\A[a-zA-Z\-~\d\s]*\z/, message: 'can only be letters, numbers, or - ~' }
end
 