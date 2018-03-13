class RemoveAssignmentFromTasks < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :assignment_id
  end
end
