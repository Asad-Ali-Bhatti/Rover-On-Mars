require_relative 'lib/rover'
require_relative 'lib/plateau'

class Controller
  def self.run
    command_file = open('input/commands')
    plateau_size = command_file.first.chomp
    commands     = command_file.collect

    @@plateau = Plateau.new(plateau_size)

    @@rover = nil
    commands.each_with_index do |command, i|
      command = command.chomp
      if i % 2 == 0
        @@rover = Rover.new(@@plateau, command)
      else
        command_rover(command)
      end
    end
  end

  def self.command_rover(commands)
    commands.chars.each do |command|
      if %w(L R).include? command
        @@rover.spin(command)
      elsif command == 'M'
        @@rover.move
      end
    end
     p "#{@@rover.x} #{@@rover.y} #{@@rover.direction}"
  end
end
