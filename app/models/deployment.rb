class Deployment < ApplicationRecord
  belongs_to :site
  belongs_to :unit
end
