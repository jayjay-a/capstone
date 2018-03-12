class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers, id: false do |t|
      t.primary_key :customer_id
      t.integer :state_id
      t.integer :customer_status_id
      t.string :customer_name
      t.string :customer_branch
      t.string :customer_address_1
      t.string :customer_address_2
      t.string :string
      t.string :customer_rep_name_1
      t.string :customer_rep_name_2
      t.string :customer_rep_phone_1
      t.string :customer_rep_phone_2
      t.string :customer_rep_email_1
      t.string :customer_rep_email_2

      t.timestamps
    end
  end
end
