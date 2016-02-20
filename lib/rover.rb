class Rover
  attr_accessor :x, :y, :direction

  COMPASS = { 0 => 'E', 90 => 'N', 180 => 'W', 270 => 'S' }

  def initialize(plateau, coordinates)
    @plateau = plateau
    self.x, self.y , self.direction = coordinates.split(' ')
    self.x, self.y = [self.x, self.y].map(&:to_i)
  end

  def move
    case self.direction
      when 'N'
        self.y += 1
      when 'E'
        self.x += 1
      when 'S'
        self.y -= 1
      when 'W'
        self.x -= 1
    end
  end

  def spin(towards)
    if towards == 'L'
      spin_left
    elsif towards == 'R'
      spin_right
    end
  end

  def spin_left
    self.direction = COMPASS[( COMPASS.key(self.direction) + 90 ) % 360]
  end

  def spin_right
    self.direction = COMPASS[( COMPASS.key(self.direction) - 90 ) % 360]
  end
end
