class Site < ApplicationRecord
  belongs_to :project
  has_many :deployments

  accepts_nested_attributes_for :deployments, reject_if: lambda { |attrs|  attrs['deploy_date'].blank? }

  after_initialize :set_defaults

  def set_defaults
    self.image ||= 'https://via.placeholder.com/400x300'
  end
end
