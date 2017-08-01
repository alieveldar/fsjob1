require File.join(%w[. lib task_sequence])

@user_step_sequence = 0
@result_of_sequence = Array.new
puts "Please enter number of steps"
@user_step_sequence = gets.chomp
new_sequence = TaskSequence.new(@user_step_sequence)
if (Integer(@user_step_sequence)rescue nil).nil?
	puts "Please enter the number of steps"
end
@rezult = new_sequence.sequence
puts @rezult
