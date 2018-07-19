class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :owner_id
      t.string :name
      t.string :place
      t.string :image
      t.datetime :start_at
      t.datetime :end_at
      t.text :description
      t.text :content
      t.string :condition
      t.integer :level
      t.integer :status

      t.timestamps
    end
  end
end
