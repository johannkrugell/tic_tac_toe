# frozen_string_literal: true

# class creating the board object
class Board < Player
  attr_reader :coordinates

  def initialize
    super(name, marker)
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

  def update_board(coordinate_selected, player_marker)
    @coordinates.each do |key, value|
      @coordinates[key] = player_marker if value == coordinate_selected.to_i
    end
  end

  def board_result
    a = ['sqr[1,2,3]', 'sqr[4,5,6]', 'sqr[7,8,9]', 'sqr[1,4,7]', 'sqr[2,5,8]',
         'sqr[3,6,9]', 'sqr[1,5,9]', 'sqr[3,5,7]']
    a.each do |selection|
      row1 = @coordinates.select { |key| key.to_s.match(selection) }
      return true if row1.values.to_a.uniq.length <= 1
    end
  end
end
