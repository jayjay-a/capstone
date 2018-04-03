class MaterialList < ApplicationRecord
    belongs_to :project
    belongs_to :material

    def material_desc
        @material = Material.all
    end
    
    def total
        unit_price * quantity
    end

    ransacker :total do
        Arel.sql('unit_price * quantity')
    end
end
