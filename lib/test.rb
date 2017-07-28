def step
row = "1211"
row_length = row.length
@n = 0
@count = 1
while @n < row_length
digit = row[@n]
puts "DIGIT #{digit}"
if digit == row[@n+1]
	puts "row+1 #{row[@n+1]}"
	@count = @count + 1
	@n = @n +1
	puts "count #{@count}"
	puts "NFROM if #{@n}" 
else
	@n = @n + 1
	puts "N #{@n}"
	@count = 1
	puts "COUNT FROM ELSE #{@count}"
	puts "NFROMELSE #{@n}"
end
end
end

