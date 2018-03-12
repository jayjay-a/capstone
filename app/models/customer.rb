class Customer < ApplicationRecord
    has_many :projects
    belongs_to :state
    belongs_to :customer_status
end
