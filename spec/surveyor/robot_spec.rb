require 'spec_helper'

describe "Robot" do
  let(:robot1) { Robot.new(2, 5, "WEST") }
  let(:robot2) { Robot.new(2, 5, "NORTH") }

  it "sets the direction of robot" do
    expect(robot2.orientation).to eq("NORTH")
  end
  it "changes the orientation of robot" do

    robot1.turn_left
    robot1.turn_left
    robot1.turn_right
    expect(robot1.orientation).to eq("SOUTH")
  end
  
  it "sets the position of robot" do
    expect(robot1.position).to eq ([2, 5])
  end

  it "moves the robot" do
    robot2.move
    robot2.turn_left
    robot2.move
    robot2.turn_right
    robot2.move
    robot2.turn_right
    robot2.move
    robot2.turn_right    
    robot2.move

    expect(robot1.position).to eq([2, 5])

  end
end