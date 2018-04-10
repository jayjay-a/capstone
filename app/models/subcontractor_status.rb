class SubcontractorStatus < ApplicationRecord
  has_many :subcontractors

  validates :subcontractor_status_description, presence: true, length: { maximum: 40 }
end
