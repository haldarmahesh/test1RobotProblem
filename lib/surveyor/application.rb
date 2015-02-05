#this launches the application
class Application
  def initiaalize
    @robot = Robot.new
    @coord =CoordinateParser.new
  end
  def start
    command_parser = CommandParser.new
      $/ = "END"
      user_input = STDIN.gets
      @commands = command_parser.parse(user_input)
      
      @coordinates_array = @coord.parse(@commands[0])

      puts @coord.class
  end
end
