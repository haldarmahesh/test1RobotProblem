#this launches the application
class Application
  def initiaalize
   
  end
  def start
    @robot = Robot.new
    @coord =CoordinateParser.new
    command_parser = CommandParser.new
      $/ = "END"
      user_input = STDIN.gets
      @commands = command_parser.parse(user_input)
      
      @coordinates_array = @coord.parse(@commands[0]) #SET robot coordinate
      robot.set_position(@coordinates_array[0], @coordinates_array[1])
      
      puts @coordinates_array
  end
end
