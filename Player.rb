require_relative 'Dice'
class Player
	DICE_COUNT = 10

	attr_reader :name, :score

	def initialize
		@score = 0
	end

	def turn
		score = 0
		dice = DICE_COUNT

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
			break unless continue?(score)
			if dice.zero?
				dice = DICE_COUNT
			end
		end
		@score += score
	end

	def continue?(score)
		false
	end

	def <=>(other)
		@score <=> other.score
	end
end
