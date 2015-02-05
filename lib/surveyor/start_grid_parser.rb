#this parses the start grid of robot
class StartGridParser
  def initialize
    @start_grid = []    
  end
  def parse(start)
    grid_direction = start.rpartition(' ')
    @start_grid = [grid_direction.first , grid_direction.last] 
  end
end