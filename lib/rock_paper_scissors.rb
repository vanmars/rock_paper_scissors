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

  def wins?(player, computer)
    # playerMove()
    # computer = computerMove()
    # player = @playermove

    if (player == "rock" && computer == "scissors") || (player == "paper" && computer == "rock") || (player == "scissors" && computer == "paper")
      return true
    else
      return false
    end
  end
end