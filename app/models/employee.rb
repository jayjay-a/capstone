class Employee < ApplicationRecord
  has_many :assignments
  belongs_to :employee_status
  belongs_to :employee_type
  belongs_to :state

end
