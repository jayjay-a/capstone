class Task < ApplicationRecord
  has_many :task_notes, dependent: :destroy
  has_many :assignments
  belongs_to :task_status, optional: true
  belongs_to :job
  belongs_to :project, optional: true

  validates :job_id, presence: true
  validates :task_status_id, presence: true
  validates :task_start_date, presence: true
  validates :task_description, presence: true, length: { maximum: 200 }

  #nested form
  accepts_nested_attributes_for :task_notes, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :assignments, allow_destroy: true, reject_if: :all_blank
end
