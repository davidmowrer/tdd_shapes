require './lib/shape'

# O HAI Rubocop
class Rectangle < Shape
  attr_reader :width
  attr_reader :height

  def initialize(width, height)
    @width = width
    @height = height
  end

  def area
    (@width * @height)
  end

  def perimeter
    (@width * 2) + (@height * 2)
  end
end
