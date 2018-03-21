class Task < ApplicationRecord
  has_many :task_notes, dependent: :destroy
  has_many :assignments
  belongs_to :task_status, optional: true
  belongs_to :job
  belongs_to :project, optional: true

  accepts_nested_attributes_for :task_notes, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :assignments, allow_destroy: true, reject_if: :all_blank
end
