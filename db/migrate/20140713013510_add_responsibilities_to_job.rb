class AddResponsibilitiesToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :responsibilities, :text
  end
end
