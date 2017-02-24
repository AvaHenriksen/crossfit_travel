class AddAddressFormattedAddressToCrossfitBox < ActiveRecord::Migration[5.0]
  def change
    add_column :crossfit_boxes, :address_formatted_address, :string
  end
end
