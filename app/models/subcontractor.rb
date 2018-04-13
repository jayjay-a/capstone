class Subcontractor < ApplicationRecord
  has_many :assignments
  belongs_to :subcontractor_status

  validates :subcontractor_status_id, presence: true
  validates :subcontractor_name, length: { maximum: 70 }, format: { with: /\A[a-zA-Z'\-.\s]*\z/, message: 'can only be letters' }
  validates :subcontractor_phone, allow_blank: true, length: { maximum: 15 }, format: { with: /\A\(?\d{3}\)?[- ]?\d{3}[- ]?\d{4}\z/, message: 'needs to only be numbers and -\'s or ()\'s' }
  validates :subcontractor_email, allow_blank: true, length: { maximum: 70 }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create, message: 'is not a valid email address' }
  validates :company, allow_nil: true, length: { maximum: 100 }
end
