#this sets and returns attributes of a robot like orientation, moves and curent coordinate
class Robot
  def initialize
    @orientation = ""
    @position = [0,0]
  end

  def set_position(x, y)
    @position[0] = x
    @position[1] = y
    @position
  end
  def change_orientation(orientation)
    @orientation = orientation
  end
end
