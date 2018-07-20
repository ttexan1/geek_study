class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :owner_id
      t.integer :user_id
      t.integer :event_id, null: false
      t.text :content

      t.timestamps
    end
  end
end
