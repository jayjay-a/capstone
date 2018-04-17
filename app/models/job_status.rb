class JobStatus < ApplicationRecord
  acts_as_paranoid #for soft deletes
  has_many :jobs

  # Validations
  validates :job_status_description, presence: true, length: { maximum: 40 }
end
