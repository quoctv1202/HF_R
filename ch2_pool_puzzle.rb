class Robot
  def head
    @head
  end

  def head=(head)
    @head = head
  end

  def arms=(val)
    @arms = val
  end

  attr_reader :leg, :body
  attr_writer :eyes
  attr_accessor :feet

  def assemble
    @leg = "K2600 steal"
    @body = "Force ACB"
    @head = "4.0 AI"
    puts "How about the feet of Robot"
    @feet = gets
  end

  def diagnostic
    puts @arms
    puts @eyes
  end

  def complete
    puts "----------------"
    puts @head
    puts @eyes
    puts @body
    puts @arms
    puts @leg
    puts @feet
  end
end

green = Robot.new

green.arms = "Strong hands 3.0"
green.eyes = "Laze ft X-ray"
green.head = "234"
green.assemble
green.diagnostic
green.complete
