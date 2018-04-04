class TaskNote < ApplicationRecord
  belongs_to :task

  validates :task_id, presence: true, numericality: true
  validates :task_notes, presence: true, length: { maximum: 5000 }
  validates :task_note_owner, presence: true, length: { maximum: 70 }
  validates :task_note_date, presence: true
end
