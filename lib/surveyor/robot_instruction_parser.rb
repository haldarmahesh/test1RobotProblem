#this parses the instruction passed to the robots
class RobotInstructionParser
  def initialize
    @robot_instruction = []
  end
  def parse(instruction)
    @robot_instruction = instruction.split(' ')
  end
end

ob = RobotInstructionParser.new
puts ob.parse("LEFT MOVE LEFT MOVE LEFT RIGHT")