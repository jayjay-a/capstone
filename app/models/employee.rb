class Employee < ApplicationRecord
  has_many :assignments
  belongs_to :employee_status
  belongs_to :employee_type
  belongs_to :state

  validates :employee_status_id, presence: true
  validates :employee_type_id, presence: true
  validates :state_id, presence: true
  validates :first_name, presence: true, length: { maximum: 35 }
  validates :last_name, presence: true, length: { maximum: 35 }
  validates :join_date, presence: true

  def first_and_last_name
    "#{first_name} #{last_name}"
  end

end
