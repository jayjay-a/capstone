class ProjectType < ApplicationRecord
  has_many :projects

  validates :project_type_description, presence: true
end
