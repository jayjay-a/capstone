class TaskStatus < ApplicationRecord
  acts_as_paranoid #for soft deletes
  has_many :tasks

  # Validations
  validates :task_status_description, presence: true, length: { maximum: 40 }
end
