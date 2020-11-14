class AddReferencesToAddstock < ActiveRecord::Migration[5.2]
  def change
    add_reference :addstocks, :medicine
  end
end
