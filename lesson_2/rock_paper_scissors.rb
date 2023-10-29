VALID_CHOICES = ['rock', 'paper', 'scissors', 'spock', 'lizard']

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'lizard' && second == 'paper')

end

def display_results(user, computer)
  if win?(computer, user)
    prompt("Computer won!")
  elsif win?(user, computer)
    prompt("You win!")
  else
    prompt("You tied!")
  end
end

prompt("Welcome to the Rock, Paper, Scissors, Spock, Lizard game!")

loop do
  user_choice = ''
  loop do
    prompt("Select a choice: rock, paper, scissors, lizard, spock")
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
