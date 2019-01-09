class CreateCohorts < ActiveRecord::Migration[5.2]
  def up
    create_table :cohorts do |t|
      t.string :cohort_name
      t.string :start_date
      t.string :end_date
      t.timestamps
    end
  end

  def down
    drop_table :cohorts
  end
end
