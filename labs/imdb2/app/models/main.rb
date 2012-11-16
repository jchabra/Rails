# Extra Help
# class Main
# 	def self.run
# 		puts "movie name?"
# 		name = gets.chomp
# 		puts "gross?"
# 		gross = gets.to_f
# 		puts "rating?"
# 		rating = gets.chomp

# 		Movie.create(:name => name, :gross => gross, :rating => rating)
# 	end
# end



# Class Notes
class Main
  def self.run
    puts "(a)ctor or (q)uit"
    response = gets.chomp
    while response != 'q'
      puts "Name?"
      name = gets.chomp
      puts "Gender?"
      gender = gets.chomp

      Actor.create(:name => name, :gender => gender)

      puts "(a)ctor or (q)uit"
      response = gets.chomp
    end
  end
end