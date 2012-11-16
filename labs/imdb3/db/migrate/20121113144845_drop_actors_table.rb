class DropActorsTable < ActiveRecord::Migration
  def end
  	drop_table :actors 
  end
end
