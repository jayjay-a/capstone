class ProjectType < ApplicationRecord
  acts_as_paranoid #for soft deletes
  has_many :projects

  # Validations
  validates :project_type_description, presence: true, length: { maximum: 40 }
end
