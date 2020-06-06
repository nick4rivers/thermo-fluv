module DefaultImage
  extend ActiveSupport::Concern

  def self.default_image_generator(height:, width:)
    "https://via.placeholder.com/#{height}x#{width}"
  end

end