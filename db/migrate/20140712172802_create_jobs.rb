class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :rec_id
      t.string :name
      t.string :description
      t.string :excerpt
      t.string :keywords
      t.integer :salary
      t.integer :company_id
      t.integer :location_id
      t.integer :status

      t.timestamps
    end
  end
end
