require 'matrix'

class VectorDistance
  def self.calculate(vector_final, vector_initial)
    new_vector = vector_final - vector_initial
    new_vector.magnitude
  end
end
