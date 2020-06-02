class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :units do |t|
      t.string :serial
      t.string :status
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
