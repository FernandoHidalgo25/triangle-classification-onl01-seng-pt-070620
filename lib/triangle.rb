class Triangle
  attr_accessor :side1,:side2, :side3, :isosceles, :equilateral, :scalene
 class TriangleError < StandardError
  end
  def initialize(side1,side2,side3)
    @side1=side1
    @side2=side2
    @side3=side3
  end
  def kind
    if !(@side1 > 0 && @side2 >0 && @side3 >0 && @a+@b >@c && @a+@c >@b && @b+@c > @a)
      raise TriangleError
    elsif @a == @b && @b == @c
      :equilateral
    elsif @a == @b && @b != @c
      :isosceles
    elsif @b == @c
      :isosceles
    elsif @a == @c
      :isosceles
    else
      :scalene
    end
  end

  end