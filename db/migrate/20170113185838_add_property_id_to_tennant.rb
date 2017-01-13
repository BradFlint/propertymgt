class AddPropertyIdToTennant < ActiveRecord::Migration[5.0]
  def change
    add_column :tennants, :propertyId, :integer
  end
end
