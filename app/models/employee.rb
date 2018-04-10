class Employee < ApplicationRecord
  has_many :assignments
  belongs_to :employee_status
  belongs_to :employee_type
  belongs_to :state

  validates :employee_status_id, presence: true
  validates :employee_type_id, presence: true
  validates :state_id, presence: true
  validates :first_name, length: { maximum: 35 }, format: { with: /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/, message: 'can only be letters' }
  validates :last_name, length: { maximum: 35 }, format: { with: /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/, message: 'can only be letters' }
  validates :join_date, presence: true

  def first_and_last_name
    "#{first_name} #{last_name}"
  end

end
