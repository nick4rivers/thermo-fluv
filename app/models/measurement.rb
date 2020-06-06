class Measurement < ApplicationRecord
  belongs_to :deployment

  accepts_nested_attributes_for :deployment

  def self.import(file, deployment_id)
    CSV.foreach(file.path, headers: true) do |row|
      measurement = Measurement.new
      measurement.moment = row[0]
      measurement.temperature = row[1]
      measurement.deployment_id = deployment_id
      measurement.save!
    end
  end

end
