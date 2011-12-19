require_relative 'ComputerPlayer'
require_relative 'HeuristicComputerPlayer'

players = []
players << HeuristicComputerPlayer.new(2)
players << HeuristicComputerPlayer.new(3)
players << HeuristicComputerPlayer.new(4)
players << HeuristicComputerPlayer.new(5)
#dice min, score min
#players << ComputerPlayer.new(1, 8)
#players << ComputerPlayer.new(1, 10)
#players << ComputerPlayer.new(1, 20)
#players << ComputerPlayer.new(1, 30)
#players << ComputerPlayer.new(2, 7)
#players << ComputerPlayer.new(2, 17)
#players << ComputerPlayer.new(2, 27)
#players << ComputerPlayer.new(2, 37)
#players << ComputerPlayer.new(3, 6)
#players << ComputerPlayer.new(3, 16)
#players << ComputerPlayer.new(3, 26)
#players << ComputerPlayer.new(3, 36)
(1...10).each do |dice_min|
	(1...6).each do |score_min|
		players << ComputerPlayer.new(dice_min, score_min * 10)
		players << ComputerPlayer.new(dice_min, score_min * 9)
		players << ComputerPlayer.new(dice_min, score_min * 8)
	end
end

10000.times do
	players.each { |p| p.turn }
end

sorted = players.sort
sorted.each do |p|
	puts "#{p.name} #{p.score}"
end
