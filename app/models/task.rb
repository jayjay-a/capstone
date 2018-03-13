class Task < ApplicationRecord
  has_many :task_notes
  has_many :assignments
  belongs_to :task_status, optional: true
  belongs_to :job
  belongs_to :project, optional: true
end
