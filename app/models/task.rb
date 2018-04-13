class Task < ApplicationRecord
  has_many :task_notes, dependent: :destroy
  has_many :assignments, dependent: :destroy
  belongs_to :task_status
  belongs_to :job
  belongs_to :project, optional: true #fixes seeding. when tasks are added through nests, project_id is already passed

  # Validations
  validates :task_description, presence: true, length: { maximum: 200 }
  validate :task_end_date_cannot_be_before_task_start_date, unless: -> { task_end_date.blank? }
  validate :task_start_date_has_to_be_between_job_start_and_end, unless: -> { task_start_date.blank? }
  validate :task_end_date_has_to_be_between_job_start_and_end, unless: -> { task_end_date.blank? }
  validate :task_status_must_be_started_if_there_is_a_start_date, unless: -> { task_start_date.blank? }

  #nested form
  accepts_nested_attributes_for :task_notes, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :assignments, allow_destroy: true, reject_if: :all_blank

  def task_end_date_cannot_be_before_task_start_date
     if task_end_date.present? && task_start_date.present? && task_end_date < task_start_date
       errors.add(:task_end_date, "can't be before the task start date")
     elsif task_end_date.present? && task_start_date.blank?
       errors.add(:task_end_date, "can't exist without a Task Start Date")
     end
  end

  def task_start_date_has_to_be_between_job_start_and_end
    if task_start_date.present? && job.job_start_date.present? && task_start_date < job.job_start_date
      errors.add(:task_start_date, "can't be before job start date")
    elsif task_start_date.present? && job.job_end_date.present? && task_start_date > job.job_end_date
      errors.add(:task_start_date, "can't be after job end date")
    elsif task_start_date.present? && job.job_start_date.blank?
      errors.add(:task_start_date, "can't exist without a job start date")
    end
  end

  def task_end_date_has_to_be_between_job_start_and_end
    if task_end_date.present? && job.job_start_date.present? && task_end_date < job.job_start_date
      errors.add(:task_end_date, "can't be before job start date")
    elsif task_end_date.present? && job.job_end_date.present? && task_end_date > job.job_end_date
      errors.add(:task_end_date, "can't be after job end date")
    end
  end

  def task_status_must_be_started_if_there_is_a_start_date
    if task_start_date.present? && task_status_id.present? && task_status_id <= 1
      errors.add(:task_status, "must be \"Not Started\" for current or future dates only")
    end
  end
end
