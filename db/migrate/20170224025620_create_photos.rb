class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :location_id
      t.string :location_type
      t.integer :user_id
      t.string :image
      t.text :caption

      t.timestamps

    end
  end
end
