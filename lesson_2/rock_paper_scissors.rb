VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  win_obj = {
    rock: ['scissors', 'lizard'],
    paper: ['rock', 'spock'],
    scissors: ['paper', 'lizard'],
    spock: ['rock', 'scissors'],
    lizard: ['spock', 'paper']
  }

  win_obj[first.to_sym].include?(second)
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

prompt("Welcome to the Rock, Paper, Scissors, Lizard, Spock game!")

choice_prompt = <<-MSG
1. Rock
2. Paper
3. Scissors
4. Lizard
5. Spock
MSG

loop do
  user_choice = ''
  loop do
    prompt(choice_prompt)
    user_choice = VALID_CHOICES[gets.chomp.to_i - 1]

    if user_choice
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
