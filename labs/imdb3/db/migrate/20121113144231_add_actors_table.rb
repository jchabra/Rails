class AddActorsTable < ActiveRecord::Migration
 def change
  	create_table :actors do |t|
  		t.string :name #t is for table
  		t.timestamps 		
  	end
  end
end
