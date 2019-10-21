require 'controller'

class Router

	def initialize 
	  @controller = Controller.new 
	end 
	
	def perform 
	  puts "Bienvenue dans Gossip Project"

	  while true 

	    puts "Tu veut faire quoi ?"
	    puts "1. Créer un gossip"
	    puts "2. Quitter l'application"
	    reponse = get chomp.to_i

	   case reponse 
	   when 1 
	     puts "Tu as choisi de créer un gossip"
	     @controller.create_gossip 
	     
	  when 2
	    puts "A bientot !"
	    break
 
	  else 
	    puts "Ce choix n'existe pas ! Merci de ressayer"
	end 
