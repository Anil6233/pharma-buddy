class CreateBillGenerations < ActiveRecord::Migration[5.2]
  def change
    create_table :bill_generations do |t|
      t.integer :sno
      t.string :item_description
      t.integer :item_count
      t.integer :total
      t.integer :discount
      t.integer :amount


      t.timestamps
    end
  end
end
