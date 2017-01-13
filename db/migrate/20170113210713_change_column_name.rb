class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :tennants, :propertyId, :property_id
  end
end
