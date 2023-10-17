VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts("=> #{message}")
end

def display_results(user, computer)
  if (user === computer)
    prompt("It's a tie!")
  elsif (user == 'rock' && computer == 'scissors') || (user == 'paper' && computer == 'rock') || (user == 'scissors' && computer == 'paper')
    prompt("You win!")
  else
    prompt("You lose")
  end
end

prompt("Welcome to the Rock, Paper, Scissors game!")

loop do
  user_choice = ''
  loop do
    prompt("Select a choice: rock, paper or scissors?")
    user_choice = gets.chomp

    if VALID_CHOICES.include?(user_choice)
      break
    else
      prompt("That is not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{user_choice} and computer chose #{computer_choice}")

  display_results(user_choice, computer_choice)

  prompt("Would you like to play again?")
  break unless gets.chomp.downcase.start_with?('y')
end