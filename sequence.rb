require File.join(%w[. lib task_sequence])

user_step_sequence = 0
print "Please enter number of steps (1 - 10) - "
user_step_sequence = gets.chomp
steps = (Integer(user_step_sequence)rescue nil)
if  steps.nil? || steps <= 0 || steps > 10
   puts "Wrong number of steps!"
   exit 1
else
   puts TaskSequence.new(steps.to_i).sequence
end



