class EmployeeType < ApplicationRecord
  has_many :employees

  validates :employee_type_description, presence: true, length: { maximum: 40 }
end
