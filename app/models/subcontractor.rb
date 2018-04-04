class Subcontractor < ApplicationRecord
  has_many :assignments
  belongs_to :subcontractor_status

  validates :subcontractor_status_id, presence: true
  validates :subcontractor_name, presence: true
end
