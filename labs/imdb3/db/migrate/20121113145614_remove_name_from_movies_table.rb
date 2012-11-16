class RemoveNameFromMoviesTable < ActiveRecord::Migration
  def change
  	remove_column :movies, :name #name of table, then the name of the column
  end
end
