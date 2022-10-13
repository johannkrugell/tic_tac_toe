# frozen_string_literal: true

require './lib/player'
require './lib/board'
require './lib/game'

# Welcome to Tic Tac Toe
puts "Let's play Tic Tac Toe!"
game = Game.new
game.title

# Create Player1 Object
players = {}
i = %w[1 2]
i.each do |number|
  puts "Player #{number} please enter your name"
  name = gets.chomp
  puts "Player #{number} please select your marker"
  marker = gets.chomp
  players[:"player#{number}"] = Player.new(name, marker)
end

# Create an Empty Board Object
board = Board.new
board.board

# Loop until all selections on the board is made or a player win
# Player1 makes selection
puts 'Player1, please select 1 - 9'
coodinate_selected = gets.chomp
player_marker = players[:player1].instance_variable_get(:@marker)
board.update_board(coodinate_selected, player_marker)

# Display updated board
board.board

# Check for winner

# Player2 makes selection

# Display updated board
# Check for winner
