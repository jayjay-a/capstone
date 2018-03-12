class Project < ApplicationRecord
    has_many :jobs
    has_many :project_notes
    has_many :material_lists
    has_many :rental_lists
    belongs_to :customer
    belongs_to :project_status
    belongs_to :project_type
end
