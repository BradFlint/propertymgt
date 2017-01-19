class CreateTableImages < ActiveRecord::Migration[5.0]
  def change
    create_table :table_images do |t|
    	t.references :property
    end
  end
end
