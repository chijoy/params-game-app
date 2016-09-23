# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

module Math
  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end 
end

class SimpleCalculator
  include Math
end

class FancyCalculator
  include Math

  def square_root(number)
    Math.sqrt(number)
  end
end

class WhizBangCalculator < FancyCalculator
  include Math

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end
end

# Copy your driver code from the previous exercise and more below:
simple_calc = SimpleCalculator.new
fancy_calc = FancyCalculator.new
whizbang_calc = WhizBangCalculator.new

puts "Testing simple calculator using a module using the add method...."
result = simple_calc.add(1, 2)

if result == 3
  puts "PASS!"
else
  puts "FAIL!"
end

puts "-------------"
puts "Testing fancy calculator using a module using the add method..."
result = fancy_calc.add(1, 2)

if result == 3
  puts "PASS!"
else
  puts "FAIL!"
end

puts "-------------"
puts "Using the fancy calculator to find the square root of 4..."
result = fancy_calc.square_root(4)

if result == 2
  puts "PASS!"
else
  puts "FAIL!"
end

puts "-------------"
puts "Using the whizbang calculator to find the square root of 4..."
result = whizbang_calc.add(1, 2)

if result == 3
  puts "PASS!"
else
  puts "FAIL!"
end

puts "-------------"
puts "Using the whizbang calculator to find a hypotenuse..."
result = whizbang_calc.hypotenuse(1, 2)

if result == 2.23606797749979
  puts "PASS!"
else
  puts "FAIL!"
end
