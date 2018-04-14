class ProjectType < ApplicationRecord
  has_many :projects

  # Validations
  validates :project_type_description, presence: true, length: { maximum: 40 }
end
