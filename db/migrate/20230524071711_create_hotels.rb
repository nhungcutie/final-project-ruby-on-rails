class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :hotel_name
      t.references :area, null: false, foreign_key: true
      t.text :location
      t.integer :no_emty_room

      t.timestamps
    end
  end
end
