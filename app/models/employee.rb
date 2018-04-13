class Employee < ApplicationRecord
  has_many :assignments
  belongs_to :employee_status
  belongs_to :employee_type
  belongs_to :state

  # Validations
  validates :employee_status_id, presence: true
  validates :employee_type_id, presence: true
  validates :state_id, presence: true
  validates :first_name, length: { maximum: 35 }, format: { with: /\A[a-zA-Z'\-.\s]*\z/, message: 'can only be letters' }
  validates :last_name, length: { maximum: 35 }, format: { with: /\A[a-zA-Z'\-.\s]*\z/, message: 'can only be letters' }
  validates :join_date, presence: true
  validate :dismiss_date_cannot_be_before_join_date, unless: -> { dismiss_date.blank? }

  def first_and_last_name
    "#{first_name} #{last_name}"
  end

  def dismiss_date_cannot_be_before_join_date
    if join_date.present? &&  dismiss_date < join_date
      errors.add(:dismiss_date, "can't be before the join date")
    elsif join_date.blank? && dismiss_date.present?
      errors.add(:dismiss_date, "can't exist without a join date")
    end
  end

end
