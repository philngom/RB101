# ask user for 2 numbers
# ask user for operation to perform
# perform operation
# return result

puts "Welcome to calculator!"
puts "What's your first number?"
num1 = gets.chomp.to_i
puts "What's your second number?"
num2 = gets.chomp.to_i

puts "What operation would you like to perform? 1) add 2) subtract 3) multiply 4) division"
operation = gets.chomp.to_i

result = nil

case operation
when 1
  result = num1 + num2
when 2
  result = num1 - num2
when 3
  result = num1 * num2
when 4
  result = num1.to_f / num2
end

puts "The result is: #{result}"