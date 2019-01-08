class CreateCohorts < ActiveRecord::Migration[5.2]
  def up
    create_table :cohorts do |t|
      t.string :cohort_name
      t.string :start_date
      t.string :end_date
      t.belongs_to :instructor, index: true
      t.belongs_to :course, index: true
    end
  end

  def down
    drop_table :cohorts
  end
end
