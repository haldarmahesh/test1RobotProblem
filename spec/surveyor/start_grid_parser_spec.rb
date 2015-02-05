require "spec_helper"
describe "Start grid parser" do
  let(:start_grid) { StartGridParser.new }

  it "parses the grids" do
    expect(start_grid.parse("1 2 NORTH")).to eq(["1 2", "NORTH"])
  end
end
