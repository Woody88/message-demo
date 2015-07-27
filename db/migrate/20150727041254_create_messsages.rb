class CreateMesssages < ActiveRecord::Migration
  def change
    create_table :messsages do |t|
      t.references :participant, index: true, foreign_key: true
      t.references :conversation, index: true, foreign_key: true
      t.text :content

      t.timestamps null: false
    end
  end
end
