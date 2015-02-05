require 'spec_helper'

describe "Command Parser" do
  let(:command_parser) {CommandParser.new}
  it "Parses the input in various line" do
    command = "5 5
1 2 NORTH
LEFT MOVE LEFT MOVE LEFT MOVE LEFT MOVE MOVE
3 3 EAST
MOVE MOVE RIGHT MOVE MOVE RIGHT MOVE RIGHT RIGHT MOVE"
    expect(command_parser.parse(command)).to eq(["5 5" , "1 2 NORTH" , "LEFT MOVE LEFT MOVE LEFT MOVE LEFT MOVE MOVE" , "3 3 EAST" , "MOVE MOVE RIGHT MOVE MOVE RIGHT MOVE RIGHT RIGHT MOVE"])
  end

end