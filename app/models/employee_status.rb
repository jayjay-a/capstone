class EmployeeStatus < ApplicationRecord
  has_many :employees

  validates :employee_status_description, presence: true, length: { maximum: 40 }
end
