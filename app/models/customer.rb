class Customer < ApplicationRecord
    has_many :projects
    belongs_to :state
    belonmgs_to :customer_status
end
