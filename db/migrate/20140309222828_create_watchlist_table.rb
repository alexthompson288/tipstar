class CreateWatchlistTable < ActiveRecord::Migration
  def change
    create_table :watchlists do |t|
      t.integer :user_id
      t.integer :item_id
    end
  end
end
