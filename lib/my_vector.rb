require 'matrix'

class MyVector < Matrix::Vector
  def distance(vector_final)
    delta_vector = vector_final - self
    delta_vector.magnitude
  end

  def self.path_length(*points)
    return 0 if points.size < 2
    total = 0
    points.each_index do |i|
      total += points[i].distance(points[i+1]) unless i == points.size - 1
    end
    total
  end
end
