require 'rspec'
require_relative '../solver'

describe Solver do
  describe '#factorial' do
    it 'should have one argument' do
      expect { Solver.new.factorial }.to raise_error ArgumentError
    end

    it 'should raise an error if number is negative' do
      expect { Solver.new.factorial(-1) }.to raise_error('Number must be >= 0')
    end

    it 'should raise an error if number is not an integer' do
      expect { Solver.new.factorial(10.4) }.to raise_error('Number must be an integer')
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
      expect { Solver.new.reverse }.to raise_error ArgumentError
    end

    it 'should raise an error if word is not a string' do
      expect { Solver.new.reverse(25) }.to raise_error('Word must be a string')
    end

    it 'should return reverse string' do
      expect(Solver.new.reverse('hello')).to eq('olleh')
    end
  end

  describe '#fizzbuzz' do
    it 'should have one argument' do
      expect { Solver.new.fizzbuzz }.to raise_error ArgumentError
    end

    it 'should raise an error if input is not an integer' do
      expect { Solver.new.fizzbuzz(10.4) }.to raise_error('Input must be an integer')
    end

    it 'should return fizz if divisible by 3' do
      expect(Solver.new.fizzbuzz(3)).to eq('fizz')
    end

    it 'should return buzz if divisible by 5' do
      expect(Solver.new.fizzbuzz(5)).to eq('buzz')
    end

    it 'should return fizzbuzz if divisible by 3 and 5' do
      expect(Solver.new.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'should return number as string if not divisible by 3 or 5' do
      expect(Solver.new.fizzbuzz(7)).to eq('7')
    end
  end
end
