class AddListedToProperty < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :listed, :boolean
  end
end
