# frozen_string_literal: true

class Deployment < ApplicationRecord
  belongs_to :site
  belongs_to :unit
  has_many :measurements, dependent: :destroy

  accepts_nested_attributes_for :measurements

  def display_retrieve_date
    return 'Not Retrieved' if retrieve_date.nil?

  else
    retrieve_date.to_formatted_s(:long_ordinal)
  end
end
