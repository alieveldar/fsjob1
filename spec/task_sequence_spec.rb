require "spec_helper"
require "task_sequence"

describe TaskSequence do 
	it "should return step 1" do
		expect(TaskSequence.new.step(0)).to eq 1
	end

	it "should return step 2" do
		expect(TaskSequence.new.step(1)).to eq 11
	end
end