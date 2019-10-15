require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

# INTRO

puts "------------------------------------------------
|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |
|Le but du jeu est d'être le dernier survivant !|
-------------------------------------------------"

puts "Comment t'appelles-tu ?".yellow
print "> "
name_human = gets.chomp

human_player = HumanPlayer.new(name_human)

tab_enemies = []

# CREATION DES PLAYERS 

player1 = Player.new("Rick")
player2 = Player.new("Morty")

tab_enemies << player1 
tab_enemies << player2

# MENU ET BOUCLE DE JEU  

while human_player.life_point > 0 && (player1.life_point > 0 || player2.life_point > 0)
  
  	puts 
  	puts human_player.show_state
  	puts 
  	puts "Quelle action veux-tu effectuer ?".yellow
  	puts 
  	puts "a - chercher une meilleure arme"
  	puts "s - chercher à se soigner"
  	puts
  	puts "attaquer un joueur en vue :".yellow
  	puts
  	if player1.life_point > 0 
    	  print "0 - " 
    	  player1.show_state
  	end
  	if player2.life_point > 0
    	  print "1 - " 
    	  player2.show_state
  	end
  	print "> "
  	reponse = gets.chomp.to_s
  	puts 
	
	if reponse == "a" 
	  puts "--------------------------".yellow
	  sleep(0.5)
	  human_player.search_weapon
	elsif reponse == "s" 
	  puts "--------------------------".yellow
	  sleep(0.5)
	  human_player.search_health_pack
	elsif reponse == "0"
	  puts "--------------------------".yellow
	  if player1.life_point > 0
	    sleep(0.5)
	    human_player.attacks(player1)
	  else
	    sleep(0.5)
	    puts "#{player1.name} est deja mort ! Tu passe ton tour !".red
	  end  
	else reponse == "1"
	  puts "--------------------------".yellow
	  if player2.life_point > 0 
	    sleep(0.5)
	    human_player.attacks(player2)
	  else
	    sleep(0.5) 
	    puts "#{player2.name} est deja mort ! Tu passe ton tour !".red
	  end
	end
  sleep(0.5)
puts "--------------------------".yellow
puts "Les autres joueurs t'attaquent !"
puts "--------------------------".yellow

	tab_enemies.each do |i|
	  if i.life_point > 0
	    sleep(0.5) 
	    i.attacks(human_player)
	    puts "--------------------------".yellow
	  end
	end  
end  

#FIN DU GAME ET RESULTAT

if human_player.life_point > 0
  puts "BRAVO ! TU AS GAGNE".green
else 
  puts "Loser ! Tu as perdu !".red
end 
	
