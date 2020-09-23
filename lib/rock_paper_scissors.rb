class RPS
  def initialize()
    @option = ["rock", "paper", "scissors"]
    @playermove
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
      print ("Computer chose #{computer}. You chose #{player}. How wonderful, you win!\n")
      return true
    else
      print ("Computer chose #{computer}. You chose #{player}. Bummer! You lose!\n")
      return false
    end
  end
end