class Menu

#graphique et boucle pour recommencer
	def initialize
	  puts "+----------+----------+----------+".yellow
	  puts "|				 |".yellow
	  puts "|	  JEU DE MORPION         |".yellow
	  puts "|    				 |".yellow
	  puts "+----------+----------+----------+".yellow

	  puts "Comment t'appelles-tu ?".yellow
	  print "> "
	  name1 = gets.chomp
	  puts "Et l'autre ?".yellow
	  print "> "
	  name2 = gets.chomp
	  player1 = Player.new(name1)
	  player2 = Player.new(name2)
	end

	def repeat
	  puts "Veux tu recommencer ?(Oui = 1 / Non = 0)".yellow
	  print "> "
	  reponse = gets.chomp.to_i
	end

end
