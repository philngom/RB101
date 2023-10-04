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

op = {
  1 => 'Adding',
  2 => 'Subtracting',
  3 => 'Multiplying',
  4 => 'Division'
}

puts "Welcome to calculator! Enter your name:"

name = ''
loop do
  name = gets.chomp

  if name.empty?
    promt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hello, #{name}!")

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

  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) Add
  2) Subtract
  3) Multiply
  4) Division
  MSG

  prompt(operator_prompt)

  operation = ''
  loop do
    operation = gets.chomp

    if %w(1 2 3 4).include?(operation)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

  result = ''

  case operation
  when '1'
    result = num1.to_i + num2.to_i
  when '2'
    result = num1.to_i - num2.to_i
  when '3'
    result = num1.to_i * num2.to_i
  when '4'
    result = num1.to_f / num2.to_i
  end

  prompt("#{op[operation.to_i]} the two numbers...")

  puts "The result is: #{result}"

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the calculator. Goodbye, #{name}!")
