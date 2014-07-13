class AddQualificationsToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :qualifications, :text
  end
end
