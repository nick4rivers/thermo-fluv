class Unit < ApplicationRecord
  belongs_to :type
  has_many :deployments
end
