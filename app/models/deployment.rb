# frozen_string_literal: true

class Deployment < ApplicationRecord
  belongs_to :site
  belongs_to :unit
  has_many :measurements, dependent: :destroy

  accepts_nested_attributes_for :measurements
end
