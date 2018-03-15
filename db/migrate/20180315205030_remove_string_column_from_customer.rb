class RemoveStringColumnFromCustomer < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :string
  end
end
