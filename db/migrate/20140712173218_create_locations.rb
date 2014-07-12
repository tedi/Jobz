class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :zip_code
      t.integer :lat
      t.integer :long

      t.timestamps
    end
  end
end
