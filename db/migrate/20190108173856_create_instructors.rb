class CreateInstructors < ActiveRecord::Migration[5.2]
  def up
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.string :birthday
      t.integer :salary
      t.string :education
      t.string :email
    end
  end

  def down
    drop_table :instructors
  end
end
