# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Apartment.delete_all
Tenant.delete_all

a1 = Apartment.create(:name => "1A", :room => 1, :rent => 13_200)
a2 = Apartment.create(:name => "2A", :room => 3, :rent => 1_500)
a3 = Apartment.create(:name => "3A", :room => 1, :rent => 12_000)
a4 = Apartment.create(:name => "4A", :room => 2, :rent => 1_900)
a5 = Apartment.create(:name => "5A", :room => 2, :rent => 3_000)


t1 = Tenant.create(:name => "Caryn", :age => 28, :gender => "female")
t2 = Tenant.create(:name => "Heather", :age => 32, :gender => "female")
t3 = Tenant.create(:name => "Joon", :age => 25, :gender => "male")
t4 = Tenant.create(:name => "Chris", :age => 33, :gender => "male")
t5 = Tenant.create(:name => "Andre", :age => 30, :gender => "male")
t6 = Tenant.create(:name => "Bugs Bunny", :age => 92, :gender => "male")
t7 = Tenant.create(:name => "Daisy Duck", :age => 2, :gender => "female")
t8 = Tenant.create(:name => "Mickey Mouse", :age => 88, :gender => "male")
t9 = Tenant.create(:name => "Foghorn Leghorn", :age => 30, :gender => "male")


a1.tenants = [t2]
a2.tenants = [t1, t3, t5]
a3.tenants = [t4]
a4.tenants = [t7, t9]
a5.tenants = [t6, t8]


p1 = Pet.create(:name => "Hedwig", :age => 6, :species => "magic owl")
p2 = Pet.create(:name => "Croockshanks", :age => 4, :species => "cat")
p3 = Pet.create(:name => "Scabbers", :age => 5, :species => "rat")

t4.pets = [p1]
t8.pets =[p2]
t9.pets = [p3]





