class Bowling
	attr_reader :score

	def initialize
		@score = 0
	end

	def hit(pin_ccount)
		@score += pin_ccount
	end
end



