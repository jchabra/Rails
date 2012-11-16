class AddApartmentsTable < ActiveRecord::Migration
  def change
  	create_table :apartments do |t|
  		t.string :name
  		t.integer :room
  		t.decimal :rent
  		t.timestamps 
  	end
  end
end
