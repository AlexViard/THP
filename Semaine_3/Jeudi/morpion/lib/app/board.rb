class Board

	def initialize
	  @valeur = []
  	  tab_position = ["A1","A2","A3","B1","B2","B3","C1","C2","C3"]
			@tab_win = ["a","b","c","d","e","f","g","h","i"]

	  i = 0
	  while i < 10
	    @valeur[i] = " "
	    i = i + 1
	  end

	@tour_de_jeu = 0
	 while @tour_de_jeu < 9

  	    puts "    1   2   3".green
  	    puts "  +---+---+---+".green
  	    print "A | ".green
  	    print "#{@valeur[1]}".red
  	    print " | ".green
  	    print "#{@valeur[2]}".red
  	    print " | ".green
  	    print "#{@valeur[3]}".red
  	    puts " | ".green

  	    puts "  +---+---+---+".green
  	    print "B | ".green
  	    print "#{@valeur[4]}".red
  	    print " | ".green
  	    print "#{@valeur[5]}".red
  	    print " | ".green
  	    print "#{@valeur[6]}".red
  	    puts " | ".green

  	    puts "  +---+---+---+".green
  	    print "C | ".green
  	    print "#{@valeur[7]}".red
  	    print " | ".green
  	    print "#{@valeur[8]}".red
  	    print " | ".green
  	    print "#{@valeur[9]}".red
   	    puts " | ".green
  	    puts "  +---+---+---+".green

	    puts "Ou veut tu jouer ?"
	    print "> "
	    reponse = gets.chomp
	    z = 1

	   tab_position.each do |item|
  	     if reponse != item
		z = z + 1
  	     else
		system('clear')
		if @valeur[z] == " "
		  if @tour_de_jeu % 2 == 0
		    @valeur[z] = "X"
				@tab_win[z] = "X"
		  else
		    @valeur[z] = "O"
				@tab_win[z] = "O"
		  end
		  @tour_de_jeu = @tour_de_jeu + 1
		else
		    system('clear')
		    puts "La place est deja prise !"
	        end
       	     end

	  end




	if @tab_win[1] == @tab_win[2] && @tab_win[3] == @tab_win[1]
		 puts "vainqueur : 1 2 3 "
		 		@tour_de_jeu = 11

	elsif @tab_win[4] == @tab_win[5] && @tab_win[6] == @tab_win[4]
		puts "vainqueur : 4 5 6 "
		@tour_de_jeu = 11
	elsif @tab_win[7] == @tab_win[8] && @tab_win[9] == @tab_win[7]
		puts "vainqueur : 7 8 9 "
		@tour_de_jeu = 11
	elsif @tab_win[1] == @tab_win[4] && @tab_win[7] == @tab_win[1]
		puts "vainqueur : 1 4 7 "
		@tour_de_jeu = 11
	elsif @tab_win[2] == @tab_win[5] && @tab_win[8] == @tab_win[2]
		puts "vainqueur : 2 5 8 "
		@tour_de_jeu = 11

	elsif @tab_win[3] == @tab_win[6] && @tab_win[9] == @tab_win[3]
		puts "vainqueur : 3 6 9 "
		@tour_de_jeu = 11
	elsif @tab_win[1] == @tab_win[5] && @tab_win[9] == @tab_win[1]
		puts "vainqueur : 1 5 9 "
		@tour_de_jeu = 11
	elsif @tab_win[3] == @tab_win[5] && @tab_win[7] == @tab_win[3]
		puts "vainqueur : 3 5 7 "
		@tour_de_jeu = 11
end
end

if @tour_de_jeu == 9
	puts "Egalite"
end

end
end
