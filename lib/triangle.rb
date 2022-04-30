class Triangle
  attr_reader :a, :b, :c

  def initialization(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3

    if s1 == 0 || s2 == 0 || s3 == 0
      raise TriangleError
    end

    if s1 + s2 <= s3 || s1 + s3 <= s2 || s2 + s3 <= s1
      raise TriangleError
    end

    if s1 == nil || s2 == nil || s3 == nil
      raise TriangleError
    end
  end

  def kind
    if @s1 == @s2 && s1 == @s3 && s2 == s3
      return :equilateral
    elsif @s3 == @s1 || @s1 == @s2
      return :isosceles
    else
      return :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    "This is not a triangle."
  end
end

# tri1 = Triangle.new("Triangle 1")
# tri1.kind(4, 5, 2)
# puts tri1.kind
