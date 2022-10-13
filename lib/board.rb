# frozen_string_literal: true

# class creating the board object
class Board
  def initialize
    @coordinates = {}
    i = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    i.each do |number|
      @coordinates[:"sqr#{number}"] = number
    end
  end

  def board
    puts "
   ___ ___ ___
  | #{@coordinates[:sqr1]} | #{@coordinates[:sqr2]} | #{@coordinates[:sqr3]} |
  |___|___|___|
  | #{@coordinates[:sqr4]} | #{@coordinates[:sqr5]} | #{@coordinates[:sqr6]} |
  |___|___|___|
  | #{@coordinates[:sqr7]} | #{@coordinates[:sqr8]} | #{@coordinates[:sqr9]} |
  |___|___|___|
"
  end

  def coordinates
    p @coordinates
  end

  def update_board(coordinate_selected, player_marker)
    @coordinates.each do |key, value|
      @coordinates[key] = player_marker if value == coordinate_selected.to_i
    end
  end
end
