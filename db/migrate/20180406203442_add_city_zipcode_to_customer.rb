class AddCityZipcodeToCustomer < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :customer_city, :string
    add_column :customers, :customer_zipcode, :string
  end
end
