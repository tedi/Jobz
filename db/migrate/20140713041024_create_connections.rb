class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.integer :job_id
      t.integer :seeker_id
      t.integer :recruiter_id
      t.integer :conversation_id
      t.integer :status_id

      t.timestamps
    end
  end
end
