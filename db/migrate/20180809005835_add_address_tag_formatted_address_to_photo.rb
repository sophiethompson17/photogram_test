class AddAddressTagFormattedAddressToPhoto < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :address_tag_formatted_address, :string
  end
end
