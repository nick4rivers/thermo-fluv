class Deployment < ApplicationRecord
  belongs_to :site
  belongs_to :unit
  has_many :datums
end
