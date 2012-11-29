Ninja.delete_all

name = ['Leonardo', 'Michelangelo', 'Donatello', 'Raphael', 'Splinter']

500.times do |x|
	Ninja.create(:name => name.sample)
end
