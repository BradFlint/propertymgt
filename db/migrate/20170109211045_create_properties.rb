class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.decimal :monthly_rent
      t.date :date_available
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :square_feet
      t.string :pet_policy
      t.string :security_deposit
      t.string :application_fee
      t.string :description
      t.boolean :listed

      t.timestamps
    end
  end
end
