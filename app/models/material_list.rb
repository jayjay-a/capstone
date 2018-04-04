class MaterialList < ApplicationRecord
  belongs_to :project
  belongs_to :material

  validates :project_id, presence: true
  validates :material_id, presence: true
  validates :unit_price, presence: true
  validates :quantity, presence: true
end
