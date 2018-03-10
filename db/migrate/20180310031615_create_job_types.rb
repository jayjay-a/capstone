class CreateJobTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :job_types, id: false do |t|
      t.primary_key :job_type_id
      t.string :job_type_description

      t.timestamps
    end
  end
end
