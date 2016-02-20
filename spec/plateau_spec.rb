require 'rspec'
require 'plateau'

describe Plateau do
  let(:x_coordinate) { 5 }
  let(:y_coordinate) { 5 }
  let(:valid_params) { "#{x_coordinate} #{y_coordinate}" }

  subject(:plateau) { Plateau.new(valid_params)}

  it { should respond_to(:x) }
  it { should respond_to(:y) }
  it { expect(plateau.x).to eq(x_coordinate) }
  it { expect(plateau.y).to eq(y_coordinate) }
end

