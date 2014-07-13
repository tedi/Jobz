class CreateJobSeekers < ActiveRecord::Migration
  def change
    create_table :job_seekers do |t|
      t.string :objective
      t.string :current_pos
      t.integer :grad_year
      t.string :college
      t.string :degree
      t.integer :loc_id

      t.timestamps
    end
  end
end
