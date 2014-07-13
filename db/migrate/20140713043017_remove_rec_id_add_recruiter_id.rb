class RemoveRecIdAddRecruiterId < ActiveRecord::Migration
  def change
  	remove_column :jobs, :rec_id
  	add_column :jobs, :recruiter_id, :integer
  end
end
