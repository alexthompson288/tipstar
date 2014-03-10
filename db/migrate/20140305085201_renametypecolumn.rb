class Renametypecolumn < ActiveRecord::Migration
  def change
  	rename_column :items, :type, :itemtype
  end
end
