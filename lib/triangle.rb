# equilateral = 3 equal sides
# isosceles = 2 sides equal
# sum of length of any 2 sides always exceeds 3rd side
# each side must be larger than 0

class Triangle

  attr_accessor :first, :second, :third

  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
  end

  def kind
    # is it a valid triangle?
    if first <= 0 || second <= 0 || third <= 0
      raise TriangleError # invalid triangle (a side is less than/eq to 0)
    elsif 
      first + second <= third || first + third <= second || second + third <= first
      raise TriangleError # invalid triangle (sum of 2 sides are less than one side)
    else
      # what kind of triangle is it?
      if first == second && second == third
        :equilateral # all sides equal
      elsif first == second || second == third || third == first
        :isosceles # 2 sides are equal
      else
        :scalene # if not the other 2, then scalene
      end
    end
  end

  class TriangleError < StandardError

  end

end
