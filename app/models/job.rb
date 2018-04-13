class Job < ApplicationRecord
  has_many :job_notes, dependent: :destroy
  has_many :tasks, dependent: :destroy
  belongs_to :project, optional: true
  belongs_to :job_type
  belongs_to :job_status

  # Validations
  validate :job_end_date_cannot_be_before_job_start_date, unless: -> { job_end_date.blank? }
  validate :job_start_date_has_to_be_between_project_start_and_end, unless: -> { job_start_date.blank? }
  validate :job_end_date_has_to_be_between_project_start_and_end, unless: -> { job_end_date.blank? }
  validate :job_status_must_be_started_if_there_is_a_start_date, unless: -> { job_start_date.blank? }

  #nested forms
  accepts_nested_attributes_for :tasks, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :job_notes, allow_destroy: true, reject_if: :all_blank

  def job_and_type
    "#{job_id} - #{job_type.job_type_description}"
  end

  def job_end_date_cannot_be_before_job_start_date
     if job_start_date.present? && job_end_date < job_start_date
       errors.add(:job_end_date, "can't be before the Job Start Date")
     elsif job_end_date.present? && job_start_date.blank?
       errors.add(:job_end_date, "can't exist without a Job Start Date")
     end
  end

  def job_start_date_has_to_be_between_project_start_and_end
    if job_start_date.present? && project.project_start_date.present? && job_start_date < project.project_start_date
        errors.add(:job_start_date, "can't be before the project start date")
    elsif job_start_date.present? && project.project_end_date.present? && job_start_date > project.project_end_date
        errors.add(:job_start_date, "can't be after project end date")
    elsif job_start_date.present? && project.project_start_date.blank?
        errors.add(:job_start_date, "can't exist without a project start date")
    end
  end

  def job_end_date_has_to_be_between_project_start_and_end
    if job_end_date.present? && project.project_start_date.present? && job_end_date < project.project_start_date
      errors.add(:job_end_date, "can't be before project start date")
    elsif job_end_date.present? && project.project_end_date.present? && job_end_date > project.project_end_date
        errors.add(:job_end_date, "can't be after project end date")
    end
  end

  def job_status_must_be_started_if_there_is_a_start_date
    if job_start_date.present? && job_status_id.present? && job_status_id <= 1 && job_start_date < Date.today
      errors.add(:job_status, "must not be \"Not Started\" if there is a start date")
    end
  end
end
