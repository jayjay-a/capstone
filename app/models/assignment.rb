class Assignment < ApplicationRecord
    belongs_to :employee
    belongs_to :task
    belongs_to :subcontractor
end
