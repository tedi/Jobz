class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.integer :connection_id

      t.timestamps
    end
  end
end
