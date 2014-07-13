class RemoveImageAddImage < ActiveRecord::Migration
  def change
  	remove_column :job_seekers, :image
  	add_column		:users, :image, :string
  end
end
