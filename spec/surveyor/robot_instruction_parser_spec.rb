require "spec_helper"
describe "Robot instruction parser" do
  let(:robot_instruction) {RobotInstructionParser.new}
  it "parses the robot instruction" do
    expect(robot_instruction.parse("LEFT MOVE LEFT MOVE LEFT RIGHT")).to eq(["LEFT", "MOVE", "LEFT", "MOVE", "LEFT", "RIGHT"])
  end
end