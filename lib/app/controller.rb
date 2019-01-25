require 'router'
require 'game'

$:.unshift File.expand_path('./../lib/views', __FILE__)
require 'view'

class Controller

  def initialize 
   @view = View.new
   @game = Game.new
  end

  def create_game

    @view.create_player
    @view.create_game
    @game.case_init
    @game.board_init
    @view.game_update
    @game.board_show
    self.update_game    
  end

  def update_game
    i = @game.turn_game

    while i < 30
    user_choice = @view.choice_player
    @game.board_update(user_choice)
      if @game.win
        Router.new.perform
      elsif @game.nulle
        Router.new.perform
      end
    i += 1    
    end
  end

end
  