#!/usr/bin/ruby

require ('./lib/rock_paper_scissors')

# Welcome to Rock paper scissors (put)
puts "******************************************************\n"
puts "Welcome to the best Rock, Paper, Scissors Game EVER!!!\n"
puts "******************************************************\n"

# initialize new game
game = RPS.new()

# game.wins?
game.play_game() 

