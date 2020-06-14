# frozen_string_literal: true

class Site < ApplicationRecord
  belongs_to :project
  has_many :deployments, dependent: :destroy

  accepts_nested_attributes_for :deployments, reject_if: ->(attrs) { attrs['deploy_date'].blank? }

  validates :name, :latitude, :longitude, presence: true

  validates_numericality_of :latitude, greater_than: -90, less_than: 90, message: 'must be in decimal notation'
  validates_numericality_of :longitude, greater_than: -180, less_than: 180, message: 'must be in decimal notation'

  mount_uploader :image, SiteUploader
end
