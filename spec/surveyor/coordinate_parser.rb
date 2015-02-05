require "spec_helper"
describe "Coordinate Parser" do
  let(:coordinates) { CoordinateParser.new}
  it  "parses the coordinates" do
    expect(coordinates.parse("5 5")).to eq([5 , 5 ])
  end  
end