class ProjectStatus < ApplicationRecord
  has_many :projects

  # Validations
  validates :project_status_description, presence: true, length: { maximum: 40 }
end
