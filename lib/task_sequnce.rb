class TaskSequence

	def initialize(step)
		@step = 0
	end

	def step(count)
		puts "1"
		digits[1] = 1
		n = 0
		count.times do
			current_digit = digits[n]
			counter = 1
			if current_digit = digits[n + 1] 
				counter++
				n = n + 1
			else
				digits[n +1] = 0

		end
		
