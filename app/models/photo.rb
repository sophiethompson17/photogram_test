require 'open-uri'
class Photo < ApplicationRecord
  before_validation :geocode_address_tag

  def geocode_address_tag
    if self.address_tag.present?
      url = "http://maps.googleapis.com/maps/api/geocode/json?address=#{URI.encode(self.address_tag)}"

      raw_data = open(url).read

      parsed_data = JSON.parse(raw_data)

      if parsed_data["results"].present?
        self.address_tag_latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]

        self.address_tag_longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

        self.address_tag_formatted_address = parsed_data["results"][0]["formatted_address"]
      end
    end
  end
  # Direct associations

  belongs_to :user

  # Indirect associations

  # Validations

end
