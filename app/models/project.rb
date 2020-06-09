# frozen_string_literal: true

class Project < ApplicationRecord
  has_many :sites, dependent: :destroy

  accepts_nested_attributes_for :sites, reject_if: ->(attrs) { attrs['name'].blank? }

  def count_sites
    sites.count
  end
end
