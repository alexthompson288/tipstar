class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :type
      t.string :name
      t.text :description
      t.string :link
      t.text :media
      t.integer :tipstars

      t.timestamps
    end
  end
end
