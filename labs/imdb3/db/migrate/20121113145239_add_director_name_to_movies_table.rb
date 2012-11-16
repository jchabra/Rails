class AddDirectorNameToMoviesTable < ActiveRecord::Migration
  def change
  	add_column :movies, :director_name, :string #table name, column name, column type
  end
end
