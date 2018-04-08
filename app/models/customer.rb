class Customer < ApplicationRecord
  has_many :projects
  belongs_to :state
  belongs_to :customer_status

  validates :customer_status_id, presence: true
  validates :customer_name, presence: true, length: { maximum: 70 }
  validates :customer_branch, allow_nil: true, length: { maximum: 50 }
  validates :customer_address_1, allow_nil: true, length: { maximum: 100 }
  validates :customer_address_2, allow_nil: true, length: { maximum: 100 }
  validates :customer_rep_name_1, presence: true, length: { maximum: 70 }
  validates :customer_rep_name_2, allow_nil: true, length: { maximum: 70 }
  validates :customer_rep_phone_1, allow_nil: true, length: { maximum: 15 }
  validates :customer_rep_phone_2, allow_nil: true, length: { maximum: 26 }
  validates :customer_rep_email_1, allow_nil: true, length: { maximum: 70 }
  validates :customer_rep_email_2, allow_nil: true, length: { maximum: 70 }
  validates :customer_city, allow_nil: true, length: { maximum: 64 }
  validates_format_of :customer_zipcode, allow_nil: true, length: { maximum: 16 }, with: /\A\d{5}(-\d{4})?\z/, message: 'should be in the form 12345 or 12345-1234'

  def customer_and_branch
    "#{customer_name} - #{customer_branch}"
  end
end
