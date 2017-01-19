class DropTableTableImages < ActiveRecord::Migration[5.0]
  def change
  	drop_table :table_images
  end
end
