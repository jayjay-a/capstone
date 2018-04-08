class Assignment < ApplicationRecord
  belongs_to :employee, optional: true
  belongs_to :task
  belongs_to :subcontractor, optional: true

  validates :subcontractor_id, presence: true
  validates :assignment_date, presence: true
end
