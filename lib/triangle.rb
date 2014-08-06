require './lib/shape'

# O HAI Rubocop
class Triangle < Shape
  attr_reader :base
  attr_reader :height

  def initialize(base, height)
    @base = base
    @height = height
  end

  def area
    (@base * @height) * (0.5)
  end
end
