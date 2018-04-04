class JobType < ApplicationRecord
  has_many :jobs

  validates :job_type_description, presence: true
end
