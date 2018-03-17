class Project < ApplicationRecord
    has_many :jobs, dependent: :destroy
    has_many :project_notes, dependent: :destroy
    has_many :material_lists
    has_many :rental_lists
    has_many :tasks, :through => :jobs
    belongs_to :customer
    belongs_to :project_status
    belongs_to :project_type

    #cocoon
    accepts_nested_attributes_for :jobs, allow_destroy: true, reject_if: :all_blank
    accepts_nested_attributes_for :tasks, allow_destroy: true, reject_if: :all_blank
    accepts_nested_attributes_for :project_notes, allow_destroy: true, reject_if: :all_blank

end
