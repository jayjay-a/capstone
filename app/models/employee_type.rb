class EmployeeType < ApplicationRecord
  has_many :employees

  validates :employee_type_description, presence: true
end
