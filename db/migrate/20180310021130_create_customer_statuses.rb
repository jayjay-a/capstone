class CreateCustomerStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_statuses, id: false do |t|
      t.primary_key :customer_status_id
      t.string :customer_status_description

      t.timestamps
    end
  end
end
