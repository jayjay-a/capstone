class State < ApplicationRecord
  has_many :customers
  has_many :employees

  validates :state_name, length: { maximum: 40 }, format: { with: /\A[a-zA-Z\d\s]*\z/, message: 'can only be letters' }
  validates :state_abbrev, length: 2..2, format: { with: /\A[a-zA-Z]+\z/, message: 'can only be letters' }
end
