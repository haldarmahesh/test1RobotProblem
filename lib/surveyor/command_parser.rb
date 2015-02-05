#this parses the command string
class CommandParser

  def initialize
    @commands = []   
  end
  def parse(command)
    @commands = command.split(/\n/)
  end

end