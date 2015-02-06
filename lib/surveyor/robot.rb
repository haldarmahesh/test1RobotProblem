#this sets and returns attributes of a robot like orientation, moves and curent coordinate
class Robot
  attr_reader :position, :orientation
  
  def initialize(x, y, orientation)
    @orientation = orientation
    @position = [x, y]
    @direction_array = ["NORTH", "EAST", "SOUTH", "WEST"]
  end

  def turn_left
    
    current_index = @direction_array.index(@orientation)
    current_index = (current_index - 1 ) % 4
    @orientation = @direction_array[current_index]
    return @orientation
  end

  def turn_right
    
    current_index = @direction_array.index(@orientation)
    current_index = (current_index + 1 ) % 4
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
