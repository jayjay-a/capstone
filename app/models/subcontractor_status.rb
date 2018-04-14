class SubcontractorStatus < ApplicationRecord
  has_many :subcontractors

  # Validations
  validates :subcontractor_status_description, presence: true, length: { maximum: 40 }
end
