# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

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

# Copy your driver code from the previous exercise below:
simple_calc = SimpleCalculator.new
fancy_calc = FancyCalculator.new

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
