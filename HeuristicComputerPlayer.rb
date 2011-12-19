require_relative 'ComputerPlayer'
class HeuristicComputerPlayer < ComputerPlayer
	def initialize(min)
		super(0, 20)
		@heuristic_min = min
		@name = "Heuristic player, min #{min}"
	end

	def continue?(score)
		@dice_min = [score / DICE_COUNT, @heuristic_min].min
		super(score)
=begin		dice_count = DICE_COUNT - (score % DICE_COUNT)
		if score < @score_min
			true
		elsif dice_count > @dice_min
			true
		else
			false
		end
=end
	end
end
