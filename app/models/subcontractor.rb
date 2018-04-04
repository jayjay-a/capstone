class Subcontractor < ApplicationRecord
  has_many :assignments
  belongs_to :subcontractor_status

  validates :subcontractor_status_id, presence: true, numericality: true
  validates :subcontractor_name, presence: true, length: { maximum: 70 }
  validates :subcontractor_phone, allow_nil: true, length: { maximum: 15 }
  validates :subcontractor_email, allow_nil: true, length: { maximum: 70 }
  validates :company, allow_nil: true, length: { maximum: 100 }
end
