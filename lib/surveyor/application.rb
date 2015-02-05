#this launches the application
class Application
  def initiaalize
   
  end
  def start
    @robot = Robot.new
    @coord =CoordinateParser.new
    @land = Land.new
    @start_grid = StartGridParser.new
    command_parser = CommandParser.new
    $/ = "END"
    user_input = STDIN.gets
    @commands = command_parser.parse(user_input)
    
    @coordinates_array = @coord.parse(@commands[0]) #SET robot coordinate
    @land.set_limit(@coordinates_array[0], @coordinates_array[1])
    start_grid = @start_grid.parse(@commands[1])

    @coordinates_array = @coord.parse(start_grid[0])

    @robot.set_position(@coordinates_array[0] , @coordinates_array[1])
    @robot.set_orientation(start_grid[1])
    
    
    puts @robot.orientation

  end
end
