class EventCreator

	def title 
	  puts "Salut, tu veux créer un événement ? Cool !" 
	  puts "Commençons. Quel est le nom de l'événement ?"
	  print "> "
	  @title = gets.chomp
	end
	
	def start_date
	  puts "Super. Quand aura-t-il lieu ?"
	  print "> "
	  @start_date = gets.chomp
	end
	
	def duration 
	  puts "Au top. Combien de temps va-t-il durer (en minutes) ?"
	  print "> "
	  @duration = gets.chomp.to_i
	end

	def invite
	  @invite = []
	  reponse = 'O' 
	  while reponse == 'O'
	    puts "Génial. Qui va participer ? Balance leurs e-mails ( 1 par 1 )"
	    print "> "
	    @invite << gets.chomp
	    puts "Veut tu en rajouter ? O/N"
	    print ">"
	    reponse = gets.chomp
	  end 
	end 

	def create_event
	   Event.new(@start_date, @duration, @title, @invite) 
	   puts "Super, c'est noté, ton évènement a été créé !"
	end

	def perform
	 title
	 start_date
	 duration
	 invite
	 create_event 
	end
end

test = EventCreator.new
test.perform 

 
