require 'spec_helper'

describe "Robot" do
  let(:robot1) { Robot.new }
  it "sets the direction of robot" do
    expect(robot1.change_orientation("NORTH")).to eq("NORTH")
  end
end