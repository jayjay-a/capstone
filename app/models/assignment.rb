class Assignment < ApplicationRecord
  belongs_to :employee, optional: true
  belongs_to :task
  belongs_to :subcontractor, optional: true

  validates :subcontractor_id, presence: true, numericality: true
  validates :task_id, presence: true, numericality: true
  validates :assignment_date, presence: true
end
