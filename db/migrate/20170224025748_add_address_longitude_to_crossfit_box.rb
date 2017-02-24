class AddAddressLongitudeToCrossfitBox < ActiveRecord::Migration[5.0]
  def change
    add_column :crossfit_boxes, :address_longitude, :float
  end
end
