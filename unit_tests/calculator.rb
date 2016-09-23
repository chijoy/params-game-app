require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def modulus(number1, number2)
    number1 % number2
  end

  def volume(height, width, depth)
    height * width * depth
  end

end

# Tests
RSpec.describe Calculator do 
  let(:calculator) { Calculator.new }

  describe '#add' do
    it "should return the sum of two numbers." do
      expect(calculator.add(2,3)).to eq(5)
    end
  end

  describe '#subtract' do
    it "should return the difference between two numbers." do
      expect(calculator.subtract(9,3)).to eq(6)
    end 
  end

  describe '#multiply' do
    it "should return the sum of the two numbers multiplied." do
      expect(calculator.multiply(2,4)).to eq(8)
    end 
  end

  describe '#divide' do
    it "should return the sum of the two numbers divided." do
      expect(calculator.divide(4,2)).to eq(2)
    end 
  end

  describe '#square' do
    it "should return the square of the number." do
      expect(calculator.square(2)).to eq(4)
    end 
  end

  describe '#power' do
    it "should return the exponent." do
      expect(calculator.power(3,3)).to eq(27)
    end 
  end

  describe '#modulus' do
    it "should return the remaider." do
      expect(calculator.modulus(3,2)).to eq(1)
    end 
  end

  describe '#volume' do
    it "should return the cubic measurement of 3 numbers." do
      expect(calculator.volume(3,2,10)).to eq(60)
    end 
  end

end