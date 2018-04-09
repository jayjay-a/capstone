class JobNote < ApplicationRecord
  belongs_to :job

  validates :job_notes, presence: true, length: { maximum: 5000 }
  validates :job_note_owner, presence: true, length: { maximum: 70 }, format: { with: /\A[^0-9`!@#\$%\^&*+_=(){}]+(?: [a-zA-Z]+)?\z/ }
  validates :job_note_date, presence: true
end
