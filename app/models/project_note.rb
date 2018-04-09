class ProjectNote < ApplicationRecord
  belongs_to :project

  validates :project_notes, presence: true, length: { maximum: 5000 }
  validates :project_note_date, presence: true
  validates :project_note_owner, presence: true, length: { maximum: 70 }, format: { with: /\A(?=.* )[^0-9`!@#\$%\^&*+_=(){}]+\z/ }
end
