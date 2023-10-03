# ask user for 2 numbers
# ask user for operation to perform
# perform operation
# return result

def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  num != 0
end

puts "Welcome to calculator!"

loop do
  num1 = ''
  loop do
    prompt("What's your first number?")
    num1 = gets.chomp.to_i

    if valid_number?(num1)
      break
    else
      prompt("Uh oh! Please enter a valid number.")
    end
  end

  num2 = ''
  loop do
      prompt("What's your second number?")
      num2 = gets.chomp.to_i

      if valid_number?(num2)
        break
      else
        prompt("Uh oh! Please enter a valid number.")
      end
  end

  prompt("What operation would you like to perform?")
  prompt("1) add 2) subtract 3) multiply 4) division")
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

  prompt("Do you want to perform another calculation? (Y to calculate again)");
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')

end

prompt("Thank you for using the calculator. Goodbye!")