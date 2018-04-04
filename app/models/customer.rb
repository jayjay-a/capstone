class Customer < ApplicationRecord
  has_many :projects
  belongs_to :state
  belongs_to :customer_status

  validates :customer_status_id, presence: true, numericality: true
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

  def customer_and_branch
    "#{customer_name} - #{customer_branch}"
  end
end
