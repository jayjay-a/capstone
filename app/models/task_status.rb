class TaskStatus < ApplicationRecord
  has_many :tasks

  # Validations
  validates :task_status_description, presence: true, length: { maximum: 40 }
end
