class AddAddressTagLongitudeToPhoto < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :address_tag_longitude, :float
  end
end
