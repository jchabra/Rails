# class AddMoviesTable < ActiveRecord::Migration
#   def change
#     create_table :movies do |t|
#       t.string :name
#       t.decimal :gross
#       t.string :rating
#       t.timestamps
#     end
#   end
# end


class AddMoviesTable < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.decimal :gross
      t.string :rating
      t.integer :tickets_sold
      t.timestamps
    end
  end
end