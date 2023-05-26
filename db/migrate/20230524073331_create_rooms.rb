class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.integer :room_number
      t.references :hotel, null: false, foreign_key: true
      t.integer :no_adult
      t.integer :no_children
      t.integer :price

      t.timestamps
    end
  end
end
