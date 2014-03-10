class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.boolean :tipstar
      t.boolean :dog
      t.integer :user_id
      t.integer :item_id

      t.timestamps
    end
  end
end
