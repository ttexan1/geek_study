class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :owner_id, null: false
      t.string :name, null: false
      t.string :place, null: false
      t.string :image
      t.datetime :start_at, null: false
      t.datetime :end_at, null: false
      t.text :description
      t.text :content, null: false
      t.string :condition
      t.integer :level
      t.integer :status

      t.timestamps
    end
  end
end
