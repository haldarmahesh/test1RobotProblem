require 'spec_helper'

describe "Robot" do
  let(:robot1) { Robot.new }
  it "sets the direction of robot" do
    expect(robot1.change_orientation("NORTH")).to eq("NORTH")
  end
  it "sets the position of robot" do
    expect(robot1.set_position(2, 5)).to eq ([2, 5])
  end
  # it "moves the robot" do
  #   robot1.change_orientation("NORTH")

  # end
end