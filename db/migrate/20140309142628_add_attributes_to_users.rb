class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :tipstar_count, :integer
    add_column :users, :description, :text
    add_column :users, :city, :string
  end
end
