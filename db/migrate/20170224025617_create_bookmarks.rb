class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :location_id
      t.integer :user_id
      t.string :location_type

      t.timestamps

    end
  end
end
