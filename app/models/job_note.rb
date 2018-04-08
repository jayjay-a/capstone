class JobNote < ApplicationRecord
  belongs_to :job

  validates :job_notes, presence: true, length: { maximum: 5000 }
  validates :job_note_owner, presence: true, length: { maximum: 70 }
  validates :job_note_date, presence: true
end
