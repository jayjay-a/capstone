class ProjectStatus < ApplicationRecord
  has_many :projects

  validates :project_status_description, presence: true
end
