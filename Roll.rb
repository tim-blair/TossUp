class Roll
	def initialize(val)
		@val = val
	end

	def red?
		@val == 5
	end

	def yellow?
		@val == 3 or @val == 4
	end

	def green?
		@val < 3
	end
end
