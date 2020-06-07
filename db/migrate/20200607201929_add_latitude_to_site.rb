class AddLatitudeToSite < ActiveRecord::Migration[5.2]
  def change
    add_column :sites, :latitude, :float
  end
end
