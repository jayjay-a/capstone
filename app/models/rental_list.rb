class RentalList < ApplicationRecord
    belongs_to :project
    belongs_to :rental_equipment
end
