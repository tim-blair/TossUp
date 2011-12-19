require_relative 'Player'
class ComputerPlayer < Player
	def initialize(dice_min, score_min)
		super()
		@dice_min = dice_min
		@score_min = score_min
		@name = "Computer player, dice min #{dice_min} score min #{score_min}"
	end

	def continue?(score)
		dice_count = DICE_COUNT - (score % DICE_COUNT)
		if score < @score_min
			true
		elsif dice_count > @dice_min
			true
		else
			false
		end
	end
end
