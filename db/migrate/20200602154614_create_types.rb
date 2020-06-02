class CreateTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :types do |t|
      t.string :model
      t.string :brand
      t.string :url
      t.text :image

      t.timestamps
    end
  end
end
