class CreateMedicines < ActiveRecord::Migration[5.2]
  def change
    create_table :medicines do |t|
      t.string :name
      t.integer :cost
      t.integer :quantity
      t.date :manufacturer_date
      t.date :expiry_date

      t.timestamps
    end
  end
end
