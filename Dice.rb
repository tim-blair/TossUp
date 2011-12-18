require_relative 'Roll'
#Should really be die, but how depressing is that...
class Dice
	def self.roll
		Roll.new(rand 6)
	end
end
