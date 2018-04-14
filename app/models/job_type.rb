class JobType < ApplicationRecord
  has_many :jobs

  # Validations
  validates :job_type_description, presence: true, length: { maximum: 40 }
end