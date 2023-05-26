class CreatePurposes < ActiveRecord::Migration[7.0]
  def change
    create_table :purposes do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :booking, null: false, foreign_key: true
      t.text :their_purpose

      t.timestamps
    end
  end
end
