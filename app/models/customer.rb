class Customer < ApplicationRecord
  has_many :projects
  belongs_to :state
  belongs_to :customer_status

  validates :customer_status_id, presence: true
  validates :customer_name, presence: true
  validates :customer_rep_name_1, presence: true

  def customer_and_branch
    "#{customer_name} - #{customer_branch}"
  end
end
