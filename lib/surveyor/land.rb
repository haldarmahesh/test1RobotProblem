#this is land wihch has limit coordinate
class Land
  attr_reader :limit
  def initialize
    @limit = [0 , 0]    
  end
  def set_limit(limit_x, limit_y)
    @limit[0] = limit_x
    @limit[1] = limit_y
    return @limit 
  end
end