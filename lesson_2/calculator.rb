# ask user for 2 numbers
# ask user for operation to perform
# perform operation
# return result

puts "Welcome to calculator!"
puts "What's your first number?"
num1 = gets().chomp().to_i
puts "What's your second number?"
num2 = gets().chomp().to_i

puts "What operation would you like to perform? 1) add 2) subtract 3) multiply 4) division"
operation = gets().chomp().to_i


result = if operation == 1
            num1 + num2
          elsif operation == 2
            num1 - num2
          elsif operation == 3
            num1 * num2
          elsif operation == 4
            num1.to_f / num2.to_f
          end


puts result