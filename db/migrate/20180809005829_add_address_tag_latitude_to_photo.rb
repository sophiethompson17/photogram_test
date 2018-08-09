class AddAddressTagLatitudeToPhoto < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :address_tag_latitude, :float
  end
end
