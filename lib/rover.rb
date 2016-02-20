class Rover
  attr_accessor :x, :y, :direction

  COMPASS = { 0 => 'E', 90 => 'N', 180 => 'W', 270 => 'S' }

  def initialize(plateau, coordinates)
    @plateau = plateau
    self.x, self.y , self.direction = coordinates.split(' ')
    self.x, self.y = [self.x, self.y].map(&:to_i)
  end

  def move
  end

  def spin
  end
end 
