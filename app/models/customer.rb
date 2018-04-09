class Customer < ApplicationRecord
  has_many :projects
  belongs_to :state, optional: true
  belongs_to :customer_status

  validates :customer_status_id, presence: true
  validates :customer_name, presence: true, length: { maximum: 70 }
  validates :customer_branch, allow_blank: true, length: { maximum: 50 }
  validates :customer_address_1, allow_blank: true, length: { maximum: 100 }
  validates :customer_address_2, allow_blank: true, length: { maximum: 100 }
  validates :customer_rep_name_1, presence: true, length: { maximum: 70 }, format: { with: /\A(?=.* )[^0-9`!@#\$%\^&*+_=(){}]+\z/ }
  validates :customer_rep_name_2, allow_blank: true, length: { maximum: 70 }, format: { with: /\A(?=.* )[^0-9`!@#\$%\^&*+_=(){}]+\z/ }
  validates :customer_rep_phone_1, allow_blank: true, length: { maximum: 15 }, format: { with: /\A\(?\d{3}\)?[- ]?\d{3}[- ]?\d{4}\z/, message: 'needs to only be numbers and -\'s or ()\'s' }
  validates :customer_rep_phone_2, allow_blank: true, length: { maximum: 26 }, format: { with: /\A\(?\d{3}\)?[- ]?\d{3}[- ]?\d{4}\z/, message: 'needs to only be numbers and -\'s or ()\'s' }
  validates :customer_rep_email_1, allow_blank: true, length: { maximum: 70 }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create, message: 'is not a valid email address' }
  validates :customer_rep_email_2, allow_blank: true, length: { maximum: 70 }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create, message: 'is not a valid email address' }
  validates :customer_city, allow_blank: true, length: { maximum: 64 }, format: { with: /\A[^0-9`!@#\$%\^&*+_=(){}]+\z/ }
  validates_format_of :customer_zipcode, allow_blank: true, length: { maximum: 16 }, with: /\A\d{5}(-\d{4})?\z/, message: 'should be in the form 12345 or 12345-1234'

  def customer_and_branch
    "#{customer_name} - #{customer_branch}"
  end
end
