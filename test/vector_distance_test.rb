require 'test_helper'
require_relative '../lib/my_vector'

class ExampleTest < MiniTest::Unit::TestCase
  def test_add_vector_and_integer
    vector = MyVector[1,1]
    vector += 1
    assert_equal vector[0], 2
    assert_equal vector[1], 2
  end

  def test_shovel_operator
    vector = MyVector[1,1]
    vector << 2
    assert_equal vector[2], 2
  end
end
