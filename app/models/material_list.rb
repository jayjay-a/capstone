class MaterialList < ApplicationRecord
  belongs_to :project
  belongs_to :material

  validates :project_id, presence: true, numericality: true
  validates :material_id, presence: true, numericality: true
  validates :unit_price, presence: true, numericality: { greater_than_or_equal_to: 0, message: 'has to be 0 or greater' }
  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 0, message: 'has to be 0 or greater' }, length: 10
end
