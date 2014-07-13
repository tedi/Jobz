class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :role_id, :integer
    add_column :users, :recruiter_id, :integer
    add_column :users, :job_seeker_id, :integer
  end
end
