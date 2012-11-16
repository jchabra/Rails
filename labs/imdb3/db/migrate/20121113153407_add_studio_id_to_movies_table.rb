class AddStudioIdToMoviesTable < ActiveRecord::Migration
  def change
  	add_column :movies, :studio_id, :integer # studio_id is the way to signify that you are requiring the ID of that specific table
  end
end
