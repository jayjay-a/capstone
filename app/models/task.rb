class Task < ApplicationRecord
  has_many :task_notes
  has_many :assignments
  belongs_to :task_status
  belongs_to :job
end
