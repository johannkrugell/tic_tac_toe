# frozen_string_literal: true

# class to create new game
class Game < Board
  def title
    puts "
___         ___         ___
 |  o  _     |  _  _     |  _  _
 |  | (_     | (_|(_     | (_)(/_
    "
  end

  def play_game
    @board = Board.new
    @board.board
    i = %w[1 2 3 4 5 6 7 8 9]
    i.each do |number|
      if number.to_i.odd?
        Game.move(Player.player_name(1), Player.player_marker(1), @board) == true ? break : next
      else
        Game.move(Player.player_name(2), Player.player_marker(2), @board) == true ? break : next
      end
    end
  end

  def self.move(player_name, player_marker, board)
    puts "#{player_name} please make a selection between 1 - 9"
    coodinate_selected = gets.chomp
    until coodinate_selected.match(board.coordinates.values.to_s)
      puts "Not a valid selection #{player_name} please select from the available coordinates"
      coodinate_selected = gets.chomp
    end
    board.update_board(coodinate_selected, player_marker)
    board.board
    board.board_result == true ? (puts "#{player_name} wins") : (puts 'No winner')
    return board.board_result
  end
end
