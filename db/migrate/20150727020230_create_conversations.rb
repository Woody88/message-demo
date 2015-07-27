class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.integer :author
      t.timestamps null: false
    end
  end
end
