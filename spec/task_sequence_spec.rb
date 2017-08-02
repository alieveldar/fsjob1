require "spec_helper"
require "task_sequence"
      
describe TaskSequence do 
  it "should return step 1" do
    expect(TaskSequence.new(1).sequence).to match_array(["1"])
  end
  it "should return step 2" do
  	expect(TaskSequence.new(2).sequence).to match_array(["1", "11"])
  end
  it "should return step 3" do
    expect(TaskSequence.new(3).sequence).to match_array(["1", "11", "21"])
  end
  it "should return step 4" do
    expect(TaskSequence.new(4).sequence).to match_array(["1", "11", "21", "1211"])
  end
  it "should return step 5" do
    expect(TaskSequence.new(5).sequence).to match_array(["1", "11", "21", "1211", "111221"])
  end
  it "should return step 6" do
    expect(TaskSequence.new(6).sequence).to match_array(["1", "11", "21", "1211", "111221", "312211"])
  end
  it "should return step 7" do
    expect(TaskSequence.new(7).sequence).to match_array(["1", "11", "21", "1211", "111221", "312211", "13112221"])
  end
end