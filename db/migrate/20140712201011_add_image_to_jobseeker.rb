class AddImageToJobseeker < ActiveRecord::Migration
  def change
    add_column :job_seekers, :image, :string
  end
end
