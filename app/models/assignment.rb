class Assignment < ApplicationRecord
    belongs_to :employee, optional: true
    belongs_to :task
    belongs_to :subcontractor, optional: true
end
