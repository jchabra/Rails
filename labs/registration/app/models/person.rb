# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  age        :integer
#  gender     :string(255)
#  email      :string(255)
#  address    :text
#  city       :string(255)
#  state      :string(255)
#  zipcode    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Person < ActiveRecord::Base
	validates_with PersonValidator #must put this in!
	validates :name, :length => { :minimum => 3 } # won't let you continue unless name is at least 3 characters
	validates :state, :length => { :is => 2 } # State must be 2 characters
	validates :age, :numericality => { :greater_than => 17 } # varifies that it's a number and that number is greater than 17
	validates :gender, :presence => true # it is checking for a presences of SOMETHING - at least 1 character
	validates :name, :uniqueness => true
	validates :email, :email => true
end
