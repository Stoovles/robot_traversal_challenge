require 'minitest/autorun'
require 'minitest/pride'
require './lib/robot'
require 'pry'

class RobotTest < Minitest::Test

  def test_it_can_do_the_thing
    robot = Robot.new
    assert_equal true, robot.returnsToOrigin('GRGRGRG')
    robot = Robot.new
    assert_equal false, robot.returnsToOrigin('GRGRLL')
    robot = Robot.new
    assert_equal true, robot.returnsToOrigin('')
    robot = Robot.new
    assert_equal true, robot.returnsToOrigin('GRGGRGGRGRGLG')
  end

end
