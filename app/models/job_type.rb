class JobType < ApplicationRecord
  acts_as_paranoid #for soft deletes
  has_many :jobs

  # Validations
  validates :job_type_description, presence: true, length: { maximum: 40 }
end