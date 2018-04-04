class JobNote < ApplicationRecord
  belongs_to :job

  validates :job_id, presence: true, numericality: true
  validates :job_notes, presence: true, length: { maximum: 5000 }
  validates :job_notes_owner, presence: true, length: { maximum: 70 }
  validates :job_notes_date, presence: true
end
