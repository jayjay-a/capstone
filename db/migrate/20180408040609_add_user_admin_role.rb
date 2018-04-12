class AddUserAdminRole < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :role
    add_column :users, :admin, :boolean, default: false
  end
end
