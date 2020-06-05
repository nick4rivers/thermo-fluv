class CreateMeasurements < ActiveRecord::Migration[5.2]
  def change
    create_table :measurements do |t|
      t.datetime :moment
      t.float :temperature
      t.references :deployment, foreign_key: true

      t.timestamps
    end
  end
end
