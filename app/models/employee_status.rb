class EmployeeStatus < ApplicationRecord
  acts_as_paranoid #for soft deletes
  has_many :employees

  # Validations
  validates :employee_status_description, presence: true, length: { maximum: 40 }
end
