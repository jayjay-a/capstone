class JobNote < ApplicationRecord
  belongs_to :job

  validates :job_notes, presence: true, length: { maximum: 5000 }
  validates :job_note_owner, presence: true, length: { maximum: 70 }, format: { with: /\A[a-zA-Z'\-.\s]*\z/, message: 'can only be letters' }
  validates :job_note_date, presence: true
end
