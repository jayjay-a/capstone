class ProjectNote < ApplicationRecord
  belongs_to :project

  validates :project_id, presence: true
  validates :project_notes, presence: true
  validates :project_note_date, presence: true
  validates :note_owner, presence: true
end
