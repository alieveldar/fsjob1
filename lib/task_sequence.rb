class TaskSequence

	def initialize(steps)
		@steps = steps
		@row = '1'
	end

	def step(row)
		@row = row
		@row = @row.to_s
		next_digit = Array.new
		row_length = @row.length
		@n = 0
		@count = 1
		while @n < row_length
			digit = @row[@n]			
			if digit == @row[@n+1]				
				@count = @count + 1
				@n = @n +1	
				 
			else
				@n = @n + 1
				next_digit << @count.to_s + digit
				@count = 1
			end
		end
			@row = next_digit.join("")
			return @row
	end

	def sequence()
	    while @steps != 0
		print step(@row)
		puts "   step #{(16-@steps)}"		

		@steps = @steps - 1	
		end		
	end

end

first = TaskSequence.new(15)
first.sequence