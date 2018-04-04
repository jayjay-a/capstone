class TaskStatus < ApplicationRecord
  has_many :tasks

  validates :task_status_description, presence: true
end
