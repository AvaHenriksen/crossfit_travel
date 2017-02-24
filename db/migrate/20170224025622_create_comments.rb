class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :location_id
      t.string :location_type
      t.text :body
      t.datetime :datetime

      t.timestamps

    end
  end
end
