class TaskNote < ApplicationRecord
  belongs_to :task

  validates :task_id, presence: true
  validates :task_notes, presence: true
  validates :task_note_owner, presence: true
  validates :task_note_date, presence: true
end
