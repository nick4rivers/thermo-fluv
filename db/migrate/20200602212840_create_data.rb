class CreateData < ActiveRecord::Migration[5.2]
  def change
    create_table :data do |t|
      t.datetime :date_time
      t.float :temperature
      t.references :deployment, foreign_key: true

      t.timestamps
    end
  end
end
