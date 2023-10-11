require 'pry'

def prompt(message)
  puts("=> #{message}")
end

def number_valid?(num)
  num.to_f.to_s == num || num.to_i.to_s == num
end

prompt("Welcome to the car loan calculator!")

loan_amount = ""

loop do
  prompt("Enter loan amount:")
  loan_amount = gets.chomp

  if number_valid?(loan_amount)
    break
  else
    prompt("Enter a valid number.")
  end
end

apr = ''

loop do
  prompt("Enter Annual Percentage Rate(APR)")
  apr = gets.chomp

  if number_valid?(apr)
    break
  else
    prompt("Please enter a valid number.")
  end
end

loan_duration_prompt = <<-MSG
Select a loan duration:
1) 12 months
2) 24 months
3) 36 months
4) 48 months
5) 60 months
MSG

duration = {
  "1" => 12,
  "2" => 24,
  "3" => 36,
  "4" => 48,
  "5" => 60,
}

loan_duration = ''
prompt(loan_duration_prompt)

loop do
  loan_duration = gets.chomp

  if duration[loan_duration]
    loan_duration = duration[loan_duration]
    break
  else
    prompt("Please enter valid option from selection list.")
  end
end

monthly_interest_rate = (apr.to_f / 12) / 100

monthly_payment = loan_amount.to_i * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration)))

prompt("Your monthly payment is #{monthly_payment.round(2)}.")
