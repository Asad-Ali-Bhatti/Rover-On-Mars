class Plateau
  attr_accessor :x, :y

  def initialize(coordinates)
    self.x, self.y = coordinates.split(' ').map(&:to_i)
  end
end