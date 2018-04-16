class SubcontractorStatus < ApplicationRecord
  acts_as_paranoid #for soft deletes
  has_many :subcontractors

  # Validations
  validates :subcontractor_status_description, presence: true, length: { maximum: 40 }
end
