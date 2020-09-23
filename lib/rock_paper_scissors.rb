class RPS
  def initialize()
    @option = ["rock", "paper", "scissors"]
    @playermove
    @wins = 0
    @losses = 0
    @ties = 0
  end

  def computerMove()
    computer = @option.sample()
  end

  def playerMove()
    puts ("Rock, paper, scissors?")
    @playermove = gets.chomp.downcase()
  end

  def wins?()
    playerMove()
    computer = computerMove()
    player = @playermove

    if (player == "rock" && computer == "scissors") || (player == "paper" && computer == "rock") || (player == "scissors" && computer == "paper")
      @wins += 1
      print ("Computer chose #{computer}. You chose #{player}. How wonderful, you win!\n")
      print ("Total wins: #{@wins} Total ties: #{@ties} Total losses: #{@losses}\n")
      return true
    elsif computer = player
      @ties += 1
      print ("Computer chose #{computer}. You chose #{player}. Tie! Try again!\n")
      print ("Total wins: #{@wins} Total ties: #{@ties} Total losses: #{@losses}\n")
    else
      @losses += 1
      print ("Computer chose #{computer}. You chose #{player}. Bummer! You lose!\n")
      print ("Total wins: #{@wins} Total ties: #{@ties} Total losses: #{@losses}\n")
      return false
    end
  end

  def play_game()
    response = "y"
    while (response == "y") do
      wins?()
      puts "Would you like to play again(Y/N)?"
      response = gets.chomp.downcase()
    end
  end
end