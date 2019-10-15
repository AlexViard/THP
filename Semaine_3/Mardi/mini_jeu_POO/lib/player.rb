class Player 
	attr_accessor :name, :life_point
	
	def initialize(name)
	  @name = name
	  @life_point = 10
	end

	def show_state #AFFICHE L'ETAT DU JOUEUR 
	  puts "#{@name} a #{@life_point} point de vie"  
	end 
	
	def gets_damage(vie_moins) #DOMMAGE SUBIT 
	  @life_point = @life_point - vie_moins
	  if @life_point <= 0
	    puts "Le joueur #{@name} a été tué !".red
	    @life_point = 0 
	  end
	end
	
	def attacks(player) #ATTACK SUR LE JOUEUR 
	  puts "Le joueur #{@name} attaque le joueur #{player.name}"
	  degats = compute_damage
	  puts "il lui inflige #{degats} points de dommages".red
	  player.gets_damage(degats)
	end
	
	def compute_damage
	  return rand(1..6)
	end 
end

class HumanPlayer < Player 
	attr_accessor :weapon_level, :life_point 

	def initialize(name)
	  @weapon_level = 1 
	  @life_point = 100
	  @name = name
	end
	
	def show_state
	  puts "#{@name} a #{@life_point} point de vie et une arme de niveau #{@weapon_level}"
	end
	
	def compute_damage
	  rand(1..6) * @weapon_level
	end

	def search_weapon #CHERCHER UNE ARME 
	  niveau_weapon = rand(1..6)
	  puts "Tu as trouvé une arme de niveau #{niveau_weapon}"
	  if niveau_weapon > @weapon_level
	    @weapon_level = niveau_weapon
	    puts "Youhou ! elle est meilleure que ton arme actuelle : tu la prends.".green
	  else 
	    puts "M@*#$... elle n'est pas mieux que ton arme actuelle...".red
	  end  
	end
	
	def search_health_pack #CHERCHER UN KIT DE SOIN 
	  nb = rand(1..6)
	  if nb == 1
	    puts "Tu n'as rien trouvé... ".red
	  elsif nb >= 2 && 5 >= nb
	    @life_point = @life_point + 50
	      if @life_point > 100
		@life_point = 100
	      end 
	    puts "Bravo, tu as trouvé un pack de +50 points de vie !".green
	  else 
	    @life_point = @life_point + 80
	      if @life_point > 100
		@life_point = 100
	      end
	    puts "Waow, tu as trouvé un pack de +80 points de vie !".green	  
	  end   
	end	
end  
