require 'test_helper'
require 'matrix'
require_relative '../lib/vector_distance'

class ExampleTest < MiniTest::Unit::TestCase
  def test_vector_distance_0
    vector_final = Vector[1,1]
    vector_initial = VectorDistance[0,1]

    distance = vector_initial.distance(vector_final)
    assert_equal distance, 1
  end

  def test_vector_distance_1
    vector_final = Vector[3,1]
    vector_initial = VectorDistance[0,1]

    distance = vector_initial.distance(vector_final)
    assert_equal distance, 3
  end

  def test_vector_distance_2
    vector_final = Vector[-3,1]
    vector_initial = VectorDistance[0,1]

    distance = vector_initial.distance(vector_final)
    assert_equal distance, 3
  end
end
