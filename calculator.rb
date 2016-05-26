possible_operations  = ['add', '+', 'addition', 'adding', 'subtract','-', 'subtracting', 'subtraction', 'multiply', '*', 'multiplying', 'multiplication', 'divide', '/', 'dividing', 'division' , 'exponent' , 'exponents', '**']
puts "Hi there what operation would you like to do?"
operation = gets.chomp.downcase

unless possible_operations.include? operation
  puts "That is not a valid response. What operation would you like to do?"
  operation = gets.chomp.downcase
end 

puts "Please order your expression as if you were writing it from left to right. What would be the first number?"
num1 = gets.chomp.to_f

puts "What would be the second number?"
num2 = gets.chomp.to_f

def calculation(operation, num1, num2)
  if operation == 'add' || operation == '+' || operation == 'addition' || operation == 'adding'
    num1 + num2 
  elsif operation == 'subtract' || operation == '-' || operation == 'subtracting' || operation == 'subtraction'
    num1 - num2
  elsif operation == 'multiply' || operation == '*' || operation == 'multiplying' || operation == 'multiplication'
    num1 * num2
  elsif operation == 'divide' || operation == '/' || operation == 'dividing' || operation == 'division'
    num1 / num2
  elsif operation == 'exponent' || operation == 'exponents' || operation == '**' 
    num1 ** num2
  else
    puts "I did not understand your input"
  end
end

print "Answer:"
puts sprintf('%.2f', calculation(operation, num1, num2)) 