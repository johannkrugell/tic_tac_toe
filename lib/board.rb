# frozen_string_literal: true

# class creating the board object
class Board
  def initialize
    @sqr1 = 1
    @sqr2 = 2
    @sqr3 = 3
    @sqr4 = 4
    @sqr5 = 5
    @sqr6 = 6
    @sqr7 = 7
    @sqr8 = 8
    @sqr9 = 9
  end

  def new_board
    puts "
   ___ ___ ___
  |   |   |   |
  | #{@sqr1} | #{@sqr2} | #{@sqr3} |
  |___|___|___|
  |   |   |   |
  | #{@sqr4} | #{@sqr5} | #{@sqr6} |
  |___|___|___|
  |   |   |   |
  | #{@sqr7} | #{@sqr8} | #{@sqr9} |
  |___|___|___|
"
  end
end
