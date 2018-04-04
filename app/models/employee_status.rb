class EmployeeStatus < ApplicationRecord
  has_many :employees

  validates :employee_status_description, presence: true
end
