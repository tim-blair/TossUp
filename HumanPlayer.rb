require_relative 'Player'
class HumanPlayer < Player
	def initialize(name)
		super
		@name = name
	end

	def continue?(score)
		puts "Your score is #{score} continue? (y/n)"
		while true
			answer = gets
			answer.chomp!.downcase!
			if answer == 'y' or answer == 'yes'
				return true
			elsif answer == 'n' or answer == 'no'
				return false
			else
				puts 'Continue? please enter yes or no'
			end
		end
	end
end
