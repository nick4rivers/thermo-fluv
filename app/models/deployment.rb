class Deployment < ApplicationRecord
  belongs_to :site
  belongs_to :unit
  has_many :measurements

  accepts_nested_attributes_for :measurements

end