class ChangeRentInteger < ActiveRecord::Migration[5.0]
  def change
  	change_column :properties, :monthly_rent, :integer
  end
end
