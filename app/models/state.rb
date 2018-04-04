class State < ApplicationRecord
  has_many :customers
  has_many :employees

  validates :state_name, presence: true, length: { maximum: 40 }
  validates :state_abbrev, presence: true, length: 2
end
