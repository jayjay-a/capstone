class Customer < ApplicationRecord
    has_many :projects
    belongs_to :state
    belongs_to :customer_status
    
    def customer_and_branch
        "#{customer_name} - #{customer_branch}"
    end
end
