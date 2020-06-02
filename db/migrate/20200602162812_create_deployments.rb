class CreateDeployments < ActiveRecord::Migration[5.2]
  def change
    create_table :deployments do |t|
      t.text :deploy_notes
      t.date :deploy_date
      t.time :deploy_time
      t.string :retrieve_status
      t.text :retrieve_notes
      t.date :retrieve_date
      t.time :retrieve_time
      t.references :site, foreign_key: true
      t.references :unit, foreign_key: true

      t.timestamps
    end
  end
end
