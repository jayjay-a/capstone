class Job < ApplicationRecord
  has_many :job_notes
  has_many :tasks
  belongs_to :project
  belongs_to :job_type
  belongs_to :job_status
end
