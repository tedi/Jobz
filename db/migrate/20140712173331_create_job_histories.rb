class CreateJobHistories < ActiveRecord::Migration
  def change
    create_table :job_histories do |t|
      t.integer :seeker_id
      t.integer :year_start
      t.integer :year_end
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
