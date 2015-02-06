#this parses the coodinates
class CoordinateParser
  attr_reader :coordinates
  def initialize
    @coordinates = [0,0]
  end
  def parse(coordinate)
    @coordinate = coordinate.split(" ").map {|i| Integer(i) }
  end
end