class RemoveNameToAddstock < ActiveRecord::Migration[5.2]
  def change
    remove_column :addstocks, :name
    change_column(:addstocks, :quantity, :integer)
  end
end
