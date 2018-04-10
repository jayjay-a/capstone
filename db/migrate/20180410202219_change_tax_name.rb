class ChangeTaxName < ActiveRecord::Migration[5.1]
  def change
    rename_column :projects, :tax_rate, :applicable_tax
  end
end
