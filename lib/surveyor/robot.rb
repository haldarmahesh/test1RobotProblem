#this sets and returns attributes of a robot like orientation, moves and curent coordinate
class Robot
  attr_reader :position, :orientation
  def initialize
    @orientation = ""
    @position = [0,0]
    @direction_array = ["NORTH", "EAST", "SOUTH", "WEST"]
  end

  def set_position(x, y)
    @position[0] = x
    @position[1] = y
    @position
  end
  def set_orientation(orientation)
    @orientation = orientation
  end
  def change_orientation(direction)
    
    current_index = @direction_array.index(@orientation)

    case direction
    
    when "LEFT"
      current_index = (current_index - 1 ) % 4  
    when "RIGHT"
      current_index = (current_index + 1 ) % 4
    end
    @orientation = @direction_array[current_index]
    return @orientation
  end
  def move
   
    case @orientation
      when "NORTH"
        @position[1] += 1

      when "WEST"
        @position[0] -= 1

      when "SOUTH"
        @position[1] -= 1

      when "EAST"
        @position[0] += 1   

    end  
    @position
  end
    
end
