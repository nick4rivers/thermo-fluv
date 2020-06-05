class Project < ApplicationRecord
  has_many :sites
  
  accepts_nested_attributes_for :sites, reject_if: lambda { |attrs|  attrs['name'].blank? }

  def count_sites
    sites.count
  end

end

