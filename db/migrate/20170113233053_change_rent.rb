class ChangeRent < ActiveRecord::Migration[5.0]
  def change
  	remove_column :properties, :string
  	add_column :properties, :monthly_rent, :decimal
  end
end
