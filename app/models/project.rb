class Project < ApplicationRecord
  has_many :jobs, dependent: :destroy
  has_many :project_notes, dependent: :destroy
  has_many :material_lists, dependent: :destroy
  has_many :rental_lists
  has_many :tasks, through: :jobs
  has_many :materials, through: :material_lists
  has_many :rental_equipments, through: :rental_lists
  belongs_to :customer
  belongs_to :project_status
  belongs_to :project_type

  validates :customer_id, presence: true
  validates :project_status_id, presence: true
  validates :project_type_id, presence: true
  validates :bid_submit_date, presence: true
  validates :bid_material_cost, presence: true, numericality: { greater_than_or_equal_to: 0, message: 'has to be 0 or greater' }
  validates :bid_cost_of_labor, presence: true, numericality: { greater_than_or_equal_to: 0, message: 'has to be 0 or greater' }
  validates :bid_cost_of_permits, presence: true, numericality: { greater_than_or_equal_to: 0, message: 'has to be 0 or greater' }
  validates :bid_equipment_rental, presence: true, numericality: { greater_than_or_equal_to: 0, message: 'has to be 0 or greater' }
  validates :bid_freight, presence: true, numericality: { greater_than_or_equal_to: 0, message: 'has to be 0 or greater' }
  validates :tax_rate, presence: true, numericality: { greater_than_or_equal_to: 0, message: 'has to be 0 or greater' }
  validates :bid_fuel_cost, presence: true, numericality: { greater_than_or_equal_to: 0, message: 'has to be 0 or greater' }
  validates :bid_lodging_cost, allow_nil: true, numericality: { greater_than_or_equal_to: 0, message: 'has to be 0 or greater' }
  validates :bid_amount, presence: true, numericality: { greater_than_or_equal_to: 0, message: 'has to be 0 or greater' }

  # cocoon
  accepts_nested_attributes_for :jobs, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :tasks, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :project_notes, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :material_lists, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :rental_lists, allow_destroy: true, reject_if: :all_blank

  def project_and_customer_and_branch
    "#{project_id} - #{customer.customer_name}, Branch: #{customer.customer_branch}"
  end
end
