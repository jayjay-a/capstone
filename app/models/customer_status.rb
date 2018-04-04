class CustomerStatus < ApplicationRecord
    has_many :customers

    validates :customer_status_description, presence: true
end
