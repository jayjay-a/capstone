class JobNote < ApplicationRecord
  belongs_to :job

  validates :job_id, presence: true
  validates :job_notes, presence: true
  validates :job_notes_owner, presence: true
  validates :job_notes_date, presence: true
end
