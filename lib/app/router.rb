
require 'controller'

class Router

  def initialize 
    @controller = Controller.new
  end

  def perform
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "     BIENVENUE DANS NOTRE MORPION"
    puts "       XTREM GOLDEN MORPION 300"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "   Dream Team : YACINTH & WILLYSPA"
    while true 
      puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      puts " Se battre jusqu'à la mort, tape '1'"
      puts "Quitter ce havre de détente, tape '2'"
      puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      choice = gets.chomp.to_i

      case choice 
      when 1
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "************ Let's Play *************"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        @controller.create_game
        
      when 2
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "<3 ******* Reviens vite ******** <3"
        exit
      else 
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "!!       I don't understand        !!"
        puts "         what do you mean ? "
      end
    end
  
  end


end

