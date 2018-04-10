class State < ApplicationRecord
  has_many :customers
  has_many :employees

  validates :state_name, presence: true, length: { maximum: 40 }, format: { with: /\A[^0-9`!@#\$%\^&*+_=(){}]+\z/ }
  validates :state_abbrev, presence: true, length: 2..2, format: { with: /\A[^0-9`!@#\$%\^&*+_=(){}]+\z/ }
end
