class Job < ApplicationRecord
  has_many :job_notes, dependent: :destroy
  has_many :tasks, dependent: :destroy
  belongs_to :project, optional: true
  belongs_to :job_type
  belongs_to :job_status

  accepts_nested_attributes_for :tasks, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :job_notes, allow_destroy: true, reject_if: :all_blank
end
