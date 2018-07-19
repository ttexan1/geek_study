class CreateChatRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :chat_rooms do |t|
      t.integer :owner_id
      t.integer :user_id
      t.string :name

      t.timestamps
    end
  end
end
