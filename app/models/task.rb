class Task < ApplicationRecord
  has_many :task_notes, dependent: :destroy
  has_many :assignments
  belongs_to :task_status, optional: true
  belongs_to :job
  belongs_to :project, optional: true

  validates :task_status_id, presence: true
  validates :task_start_date, presence: true
  validates :task_description, presence: true, length: { maximum: 200 }
  validate :task_end_date_cannot_be_before_task_start_date, unless: -> { task_end_date.blank? }

  #nested form
  accepts_nested_attributes_for :task_notes, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :assignments, allow_destroy: true, reject_if: :all_blank

  def task_end_date_cannot_be_before_task_start_date
     if task_end_date < task_start_date
       errors.add(:task_end_date, "can't be before the task start date")
     elsif task_end_date.present? && task_start_date.blank?
       errors.add(:task_end_date, "can't exist without a task start date")
     end
  end
end


