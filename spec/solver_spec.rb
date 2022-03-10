require 'rspec'
require_relative '../solver'

describe Solver do
  describe '#factorial' do
    it 'should raise an error if number is negative' do
      expect{ Solver.new.factorial(-1) }.to raise_error('Number must be >= 0')
    end

    it 'should raise an error if number is not an integer' do
      expect{ Solver.new.factorial(10.4) }.to raise_error('Number must be an integer')
    end

    it 'should return 1 if number is 0' do
      expect(Solver.new.factorial(0)).to eq(1)
    end

    it "should return the number's factorial" do
      expect(Solver.new.factorial(5)).to eq(120)
    end
  end

  describe '#reverse' do
    it 'should have one argument' do
      expect{ Solver.new.reverse }.to raise_error ArgumentError
    end

    it 'should return reverse string' do
      expect(Solver.new.reverse('hello')).to eq('olleh')
    end
  end
end
