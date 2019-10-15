require 'pry'
require_relative 'player'

class Game < HumanPlayer 
	attr_accessor :human_player, :enemies 

	def initialize(name)
	 i = 0
	 @enemies = []
	 while i < 4
	   @enemies << Player.new("Bot#{i}")
	   i = i + 1
	 end  
	 @human_player = HumanPlayer.new(name) 
	end


	def kill_player(player)
          @enemies.delete(player)
    	end

	def is_still_ongoing?
	  return @human_player.life_point > 0 && @enemies.size != 0
	end
	
	def show_players
	  @human_player.show_state
	  puts "Il reste #{@enemies.size} adversaire(s) !"
	end 
	
	def menu 
	  @human_player.show_state
	  puts
  	  puts "Quelle action veux-tu effectuer ?"
  	  puts
  	  puts "a - chercher une meilleure arme"
  	  puts "s - chercher à se soigner"
  	  puts
  	  puts "attaquer un joueur en vue :"
  	  puts
	  i = 0 
	    while i < @enemies.size 
	      print "#{i} - " 
	      @enemies[i].show_state
	      i = i + 1
	    end 
 	end

	def menu_choice(reponse)
	  i = 0
	  if reponse == "a"
	    puts "--------------------------".yellow
	    sleep(0.5)
	    @human_player.search_weapon
	  elsif reponse == "s"
	    puts "--------------------------".yellow
	    sleep(0.5)
	    @human_player.search_health_pack
	  end 
	  while i < @enemies.size
	    if reponse == "#{i}"
		@human_player.attacks(@enemies[i])  	
	    end 
	    if  @enemies[i].life_point <= 0
		kill_player(@enemies[i])
	    end
	    i = i + 1 
	  end 
        end 

	def enemies_attack
	  puts "------------------------------------".yellow
	  puts "| Les autres joueurs t'attaquent ! |"
	  puts "------------------------------------".yellow
		
	    @enemies.each do |i|
	    if i.life_point > 0
		if @human_player.life_point <= 0
		  break
		end 
	      sleep(0.5)
	      i.attacks(@human_player)
	      puts "--------------------------".yellow
	    end
	    end
	end

	def end 
  	  if human_player.life_point > 0
    	    puts "BRAVO ! TU AS GAGNE"
  	  else
    	    puts "Loser ! Tu as perdu !"
  	  end   
	end 
end 
