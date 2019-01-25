class View
  attr_reader :players

  def create_player
    puts "what is your name Player 1?"
    player1_name = gets.chomp.to_s
    puts "what is your name Player 2?"
    player2_name = gets.chomp.to_s
    
    @players = {player1: player1_name, player2: player2_name}
    return @players
  end


  def create_game
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "          La partie commence"
  end

  def choice_player
    user_choice = gets.chomp.upcase
    return user_choice  
  end

  def game_update
    puts "            Voici le board"
  end

end