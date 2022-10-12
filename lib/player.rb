# frozen_string_literal: true

# class creating the player object
class Player
  attr_accessor :name, :marker

  def initialize(name, marker)
    @name = name
    @marker = marker
  end

  def update_marker(new_marker)
    @marker = new_marker
  end
end
