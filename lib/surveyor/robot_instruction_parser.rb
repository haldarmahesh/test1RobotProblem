#this parses the instruction passed to the robots
class RobotInstructionParser
  def initialize
    @robot_instruction = []
  end
  def parse(instruction)
    @robot_instruction = instruction.split(' ')
  end
end
