def step(row)
row = row.to_s
next_digit = Array.new
row_length = row.length
@n = 0
@count = 1
while @n < row_length
digit = row[@n]
puts "DIGIT  #{@n} #{digit}"
if digit == row[@n+1]
	puts "row+1 #{row[@n+1]}"
	@count = @count + 1
	@n = @n +1
	puts "count from if #{@count}"
	puts "NFROM if #{@n}" 
else
	@n = @n + 1
	#puts "N #{@n}"
	
	#puts "COUNT FROM ELSE #{@count}"
	#puts "NFROMELSE #{@n}"
	puts "COUNT from else #{@count}"
	next_digit << @count.to_s + digit

	@count = 1
end

 
end
row = next_digit.join("")
puts "Thats next digit #{next_digit}"
puts "OBTAIN #{row}"
return row
end
