class ChangeDirNameToTextType < ActiveRecord::Migration
  def change
  	change_column :movies, :director_name, :text #table name, column name, changing it from string to text
  end
end
