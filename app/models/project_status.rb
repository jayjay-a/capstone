class ProjectStatus < ApplicationRecord
  has_many :projects

  validates :project_status_description, presence: true, length: { maximum: 40 }
end
