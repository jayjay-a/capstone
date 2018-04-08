class Job < ApplicationRecord
  has_many :job_notes, dependent: :destroy
  has_many :tasks, dependent: :destroy
  belongs_to :project, optional: true
  belongs_to :job_type
  belongs_to :job_status

  validates :job_type_id, presence: true
  validates :job_status_id, presence: true
  validates :job_start_date, presence: true

  #nested forms
  accepts_nested_attributes_for :tasks, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :job_notes, allow_destroy: true, reject_if: :all_blank

  def job_and_type
    "#{job_id} - #{job_type.job_type_description}"
  end
end
