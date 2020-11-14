class IndexForeignKeysInMedicines < ActiveRecord::Migration[5.2]
  def change
    add_index :medicines, :category_id
  end
end
