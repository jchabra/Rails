class AddMoviesActorsTable < ActiveRecord::Migration
  def change
  	create_table :movies_actors, :id => false do |t| #id => false will turn off autmoatic generation of primary key
  		t.integer :movie_id
  		t.integer :actor_id
  		# t.timestamps NO TIMESTAMPS IN THE JOIN TABLE
  	end
  end
end
