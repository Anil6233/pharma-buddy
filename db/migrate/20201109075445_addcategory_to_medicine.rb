class AddcategoryToMedicine < ActiveRecord::Migration[5.2]
  def change
    add_column :medicines, :category_id, :integer
  end
end
