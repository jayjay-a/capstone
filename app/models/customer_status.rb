class CustomerStatus < ApplicationRecord
    has_many :customers

    validates :customer_status_description, presence: true, length: { maximum: 40 }
end
