# frozen_string_literal: true

require './lib/player'
require './lib/board'
require './lib/game'

# Welcome to Tic Tac Toe
puts "Let's play Tic Tac Toe!"
game = Game.new
game.title

# Create Players details
Player.players_details

# Play new Game
game = Game.new
game.play_game
