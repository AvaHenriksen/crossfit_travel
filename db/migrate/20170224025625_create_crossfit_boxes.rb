class CreateCrossfitBoxes < ActiveRecord::Migration
  def change
    create_table :crossfit_boxes do |t|
      t.string :name
      t.string :address
      t.text :details
      t.integer :city_id

      t.timestamps

    end
  end
end
