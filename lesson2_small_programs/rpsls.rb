VALID_CHOICES = {
  'r' => 'rock', 
  'sc' => 'scissors', 
  'p' => 'paper', 
  'l' => 'lizard', 
  'sp' => 'spock'
}

COMBOS = {
  'rock' => %w(lizard scissors),
  'scissors' => %w(lizard paper),
  'paper' => %w(rock spock),
  'lizard' => %w(spock paper),
  'spock' => %w(rock scissors)
}

def win?(first, second)
  COMBOS[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt ('You won!')
  elsif win?(computer, player)
    prompt("Computer won!")
  else 
    prompt("It's a tie")
  end
end

def score_players(player, computer, score)
  if win?(player, computer)
    score[0] += 1
  elsif win?(computer, player)
    score[1] += 1
  end
end

def display_score(score)
  prompt "Your score is #{score[0]} and computer's score is #{score[1]}"
end

def prompt(message)
  puts("=> #{message}")
end

def method_transposition(choice)
  if choice.length <= 2
    return VALID_CHOICES[choice]
  else 
    return choice
  end
end


loop do
  score = [0, 0]
  loop do
    choice = ''
    loop do 
      prompt("Choose one: #{VALID_CHOICES.values.join(', ')}")
      choice = gets.chomp

      if VALID_CHOICES.keys.include?(choice)
        break
      elsif VALID_CHOICES.values.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end 

    computer_choice = VALID_CHOICES.values.sample

    prompt("You chose #{VALID_CHOICES[choice] || choice}; computer chose #{computer_choice}")
    
    player_choice = method_transposition(choice)
    display_results(player_choice, computer_choice)
    score_players(player_choice, computer_choice, score)

    display_score(score)

    break if score[0] == 5 || score[1] == 5
  end

  if score[0] == 5
    prompt "You won"
  else
    prompt "Computer won"

  prompt "Do you want to play again?"
  answer = gets.chomp
  break unless answer.downcase().start_with?('y') 
end

prompt ("Thank you for playing")