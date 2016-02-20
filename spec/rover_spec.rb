require 'rspec'
require 'rover'

describe Rover do
  before(:each) do
    @rover = Rover.new
  end

  it { should respond_to(:x) }
  it { should respond_to(:y) }
  it { should respond_to(:direction) }
  it { should respond_to(:spin) }
  it { should respond_to(:move) }

end