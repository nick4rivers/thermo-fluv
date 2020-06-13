# frozen_string_literal: true

# Deployment class
class Deployment < ApplicationRecord
  belongs_to :site
  belongs_to :unit
  has_many :measurements, dependent: :destroy

  accepts_nested_attributes_for :measurements

  validates :deploy_date, :deploy_time, presence: true

  def display_retrieve_date
    if retrieve_date.nil?
      'Not Retrieved'
    else
      retrieve_date.to_formatted_s(:long_ordinal)
    end
  end

  def display_retrieve_time
    if retrieve_time.nil?
      'Not Retrieved'
    else
      retrieve_time.to_formatted_s(:time)
    end
  end
end
