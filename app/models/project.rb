class Project < ApplicationRecord
  has_many :sites

  def count_sites
    sites.count
  end

end

