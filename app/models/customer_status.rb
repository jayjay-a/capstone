class CustomerStatus < ApplicationRecord
    has_many :customers

    # Validations
    validates :customer_status_description, presence: true, length: { maximum: 40 }
end
