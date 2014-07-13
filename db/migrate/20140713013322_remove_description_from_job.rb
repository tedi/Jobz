class RemoveDescriptionFromJob < ActiveRecord::Migration
  def change
    remove_column :jobs, :description, :string
  end
end
