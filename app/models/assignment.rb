class Assignment < ApplicationRecord
  acts_as_paranoid #for soft deletes
  belongs_to :employee, optional: true
  belongs_to :task
  belongs_to :subcontractor, optional: true

  # Validations
  validates :subcontractor_id, presence: true
  validates :assignment_date, presence: true
  validate :assignment_not_after_task_end, unless: -> {assignment_date.blank?}

  def assignment_not_after_task_end
     if assignment_date.present? && task.task_end_date.present? && assignment_date > task.task_end_date
      errors.add(:assignment, "can't be after Task End Date")
     end
  end
end
