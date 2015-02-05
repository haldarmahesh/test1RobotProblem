#this parses the coodinates
class CoordinateParser
  def initialize
    @coordinates = [0,0]
  end
  def parse(coordinate)
    @coordinate[0] , @coordinate[1] = coordinate.split(' ').map { |digit| digit.to_i }
    @coordinate
  end
end