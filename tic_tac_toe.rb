# frozen_string_literal: true

require './lib/player'

# Welcome to Tic Tac Toe
puts "Let's play Tic Tac Toe!"

# Are you ready Player1? Please enter your details
# Create Player1 Object
# To do: can the player creation be written as a loop?
players = {}
i = ['1', '2']
i.each do
  puts "Player #{i} please enter your name"
  name = gets.chomp
  puts "Player #{i} please select your marker"
  marker = gets.chomp
  players[:"player#{i}"] = Player.new(name, marker)
  # p players[:player1].instance_variable_get(:@marker)
end

# Create an Empty Board Object
# Loop until all selections on the board is made or a player win
# Player1 makes selection
# Display updated board
# Check for winner
# Player2 makers select
# Display updated board
# Check for winner
