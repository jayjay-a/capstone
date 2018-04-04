class MaterialList < ApplicationRecord

  belongs_to :project
  belongs_to :material

  validates :project_id, presence: true, numericality: true
  validates :material_id, presence: true, numericality: true
  validates :unit_price, presence: true, numericality: { greater_than_or_equal_to: 0, message: 'has to be 0 or greater' }
  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 0, message: 'has to be 0 or greater' }, length: { maximum: 10 }

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
