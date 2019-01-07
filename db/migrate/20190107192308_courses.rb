class Courses < ActiveRecord::Migration[5.2]
  def up
    create_table :courses do |t|
      t.string :course_name
      t.integer :hours
      t.integer :section
    end
  end

  def down
    drop_table :courses
  end

end
