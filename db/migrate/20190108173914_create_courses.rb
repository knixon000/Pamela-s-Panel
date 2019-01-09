class CreateCourses < ActiveRecord::Migration[5.2]
  def up
    create_table :courses do |t|
      t.string :course_name
      t.integer :hours
      t.timestamps
    end
  end

  def down
    drop_table :courses
  end
end
