class JobStatus < ApplicationRecord
  has_many :jobs

  validates :job_status_description, presence: true, length: { maximum: 40 }
end
