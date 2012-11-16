# == Schema Information
#
# Table name: movies
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  gross      :decimal(, )
#  rating     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# class Movie < ActiveRecord::Base #this interacts with the database and allows you to annotate
# 	attr_accessible :name, :gross, :rating #if this is not in here, it will show up as an error message when you type rake db:seed
# end

#---------------------------------------------------------------------

# == Schema Information
#
# Table name: movies
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  description  :text
#  gross        :decimal(, )
#  rating       :string(255)
#  tickets_sold :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Movie < ActiveRecord::Base
  attr_accessible :name, :description, :gross, :rating, :tickets_sold
end