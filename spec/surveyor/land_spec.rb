require 'spec_helper'
describe "Land" do

  let(:land1) { Land.new }
  it "sets land limit" do
        expect(land1.set_limit(5 ,5)).to eq([5, 5])
  end
end