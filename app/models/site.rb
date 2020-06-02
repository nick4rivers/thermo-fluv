class Site < ApplicationRecord
  belongs_to :project
  has_many :deployments
end
