# frozen_string_literal: true

# class creating the player object
class Player
  attr_accessor :name, :marker

  def initialize(name, marker)
    @name = name
    @marker = marker
  end

  def self.players_details
    @players = {}
    i = %w[1 2]
    i.each do |number|
      puts "Player #{number} please enter your name"
      name = gets.chomp
      puts "Player #{number} please select your marker"
      marker = gets.chomp
      @players[:"player#{number}"] = Player.new(name, marker)
    end
  end

  def self.player_name(player_number)
    @player_name = @players[:"player#{player_number}"].instance_variable_get(:@name)
  end

  def self.player_marker(player_number)
    @player_marker = @players[:"player#{player_number}"].instance_variable_get(:@marker)
  end
end
