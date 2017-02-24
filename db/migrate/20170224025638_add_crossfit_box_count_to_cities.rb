class AddCrossfitBoxCountToCities < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :crossfit_boxes_count, :integer
  end
end
