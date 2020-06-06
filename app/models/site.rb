class Site < ApplicationRecord

  includes DefaultImage

  belongs_to :project
  has_many :deployments

  after_initialize :set_defaults

  def set_defaults
    self.image ||= DefaultImage.default_image_generator(height: '400', width: '300')
  end
end
