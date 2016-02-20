require 'rspec'
require 'rover'
require 'plateau'

describe Rover do
  let(:x_coordinate) { 1 }
  let(:y_coordinate) { 2 }
  let(:direction)    { 'N' }
  let(:plateau)      { Plateau.new('5 5') }

  subject(:rover) { Rover.new(plateau, "#{x_coordinate} #{y_coordinate} #{direction}") }

  it { should respond_to(:x) }
  it { should respond_to(:y) }
  it { should respond_to(:direction) }
  it { should respond_to(:spin) }
  it { should respond_to(:move) }

  it { expect(subject.x).to         eq(x_coordinate) }
  it { expect(subject.y).to         eq(y_coordinate) }
  it { expect(subject.direction).to eq(direction)    }

  describe 'navigation' do
    describe '#COMPASS' do
      let(:compass) { Rover::COMPASS }
      it { expect(compass[0]).to   eq('E') }
      it { expect(compass[90]).to  eq('N') }
      it { expect(compass[180]).to eq('W') }
      it { expect(compass[270]).to eq('S') }
    end

    
  end
end