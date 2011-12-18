require_relative 'Dice'
def turn
	score = 0
	dice = 10

	while true
		rolls = []
		dice.times do
			rolls << Dice.roll
		end
		greens = rolls.count { |x| x.green? }
		if greens.zero? and not (rolls.count { |x| x.red? }).zero?
			score = 0
			break
		end
		dice -= greens
		score += greens
		break unless continue? score
		if dice.zero?
			dice = 10
		end
	end
	score
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

score = turn()
puts "Your score is #{score}"
