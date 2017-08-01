require File.join(%w[. lib task_sequence])

@user_step_sequence = 0
@result_of_sequence = Array.new
puts "Please enter number of steps (1 - 50)"
@user_step_sequence = gets.chomp
new_sequence = TaskSequence.new(@user_step_sequence)
if (Integer(@user_step_sequence)rescue nil).nil? || (Integer(@user_step_sequence) > 50)
	puts "Wrong number of steps!"
	return 1
end
@rezult = new_sequence.sequence
puts @rezult
