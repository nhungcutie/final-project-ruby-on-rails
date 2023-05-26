class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.integer :customer_code
      t.string :nationality
      t.date :date_birth
      t.text :address

      t.timestamps
    end
  end
end
