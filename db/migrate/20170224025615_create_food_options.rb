class CreateFoodOptions < ActiveRecord::Migration
  def change
    create_table :food_options do |t|
      t.string :name
      t.string :address
      t.string :details
      t.integer :city_id

      t.timestamps

    end
  end
end
