class AddStocksUsersTable < ActiveRecord::Migration # this is the join table
 def change
  	create_table :stocks_users, :id => false do |t| #id => false will turn off autmoatic generation of key
  		t.integer :stock_id
  		t.integer :user_id
  		# t.timestamps NO TIMESTAMPS IN THE JOIN TABLE
  	end
  end
end
