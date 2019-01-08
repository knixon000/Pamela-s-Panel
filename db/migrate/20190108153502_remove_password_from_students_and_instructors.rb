class RemovePasswordFromStudentsAndInstructors < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :password
    remove_column :instructors, :password
  end
end
