class AddLongitudeToSite < ActiveRecord::Migration[5.2]
  def change
    add_column :sites, :longitude, :float
  end
end
