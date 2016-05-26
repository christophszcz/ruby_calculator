puts "Hi there what operation would you like to do?"
operation = gets.chomp.downcase
puts "Please order your expression as if you were writing it from left to right. What would be the first number?"
num1 = gets.chomp.to_i
puts "What would be the second number?"
num2 = gets.chomp.to_i

def calculation(operation, num1, num2)
  if operation == 'add' || operation == '+' || operation == 'addition' || operation == 'adding'
    puts num1 + num2
  elsif operation == 'subtract' || operation == '-' || operation == 'subtracting' || operation == 'subtraction'
    num1 - num2
  elsif operation == 'multiply' || operation == '*' || operation == 'multiplying' || operation == 'multiplication'
    num1 * num2
  elsif operation == 'divide' || operation == '/' || operation == 'dividing' || operation == 'division'
    num1 / num2
  elsif operation == 'exponent' || operation == '**' 
    num1 ** num2
  else
    puts "I do not understand your input"
  end
end

print "Answer:"
puts calculation(operation, num1, num2)