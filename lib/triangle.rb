require './lib/shape'

# O HAI Rubocop
class Triangle < Shape
  attr_reader :base
  attr_reader :height
  attr_reader :right_angle

  def initialize(base, height)
    @base = base
    @height = height
    right_angle
  end

  def area
    (@base * @height) * (0.5)
  end

  def right_angle
    @base_sq = @base**2
    @height_sq = @height**2
    @right_angle_sq = @base_sq + @height_sq
    @right_angle = Math.sqrt(@right_angle_sq)
  end

  def perimeter
    (@base + @height + @right_angle)
  end
end
