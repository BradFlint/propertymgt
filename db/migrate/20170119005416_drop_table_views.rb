class DropTableViews < ActiveRecord::Migration[5.0]
  def change
  	drop_table :views
  end
end
