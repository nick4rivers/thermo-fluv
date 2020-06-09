# frozen_string_literal: true

class Site < ApplicationRecord
  belongs_to :project
  has_many :deployments, dependent: :destroy

  accepts_nested_attributes_for :deployments, reject_if: ->(attrs) { attrs['deploy_date'].blank? }

  after_initialize :set_defaults

  def set_defaults
    self.image ||= 'https://via.placeholder.com/400x300'
  end
end
