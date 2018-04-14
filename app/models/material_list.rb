class MaterialList < ApplicationRecord

  belongs_to :project
  belongs_to :material, optional: true

  # Validations
  validates :material_id, presence: true
  validates :unit_price, numericality: { greater_than_or_equal_to: 0, message: 'has to be 0 or greater' }
  validates :quantity, numericality: { greater_than_or_equal_to: 0, message: 'has to be 0 or greater' }, length: { maximum: 10 }

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
