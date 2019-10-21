require 'time'

class Event
	attr_accessor :start_date, :duration, :title, :attendees 
	@@event_all = []
		 
	
	def initialize(start_date, duration, title, attendees)
	  @start_date = Time.parse(start_date)
	  @duration = duration
	  @title = title
	  @attendees = attendees
	  @@event_all << self 
	end

	def postpone_24h
	  @start_date = @start_date + 86400
	  @start_date
	end  
	
	def to_s
	  i = 0
	  puts ">Titre : #{@title}"
	  puts ">Date de début : #{@start_date.strftime("%Y-%d-%m %H:%M")}"
	  puts ">Durée : #{@duration} minutes"

	  while i < @attendees.size
	    puts ">Invités : #{@attendees[i]}"
	    i = i + 1
	  end
	end  
	
	def end_date
	  return @start_date + @duration
	end
	
	def is_past?
	  return  @start_date < Time.now	
	end

	def is_future?
	  return @start_date > Time.now
	end 

	def is_soon  
	  return Time.now + 1800 >= @start_date
	end
		
	def age_analysis
	  age_array = [] #On initialise un array qui va contenir les âges de tous les participants à un évènement
	  average = 0 #On initialise une variable pour calculer la moyenne d'âge à l'évènement
	  @attendees.each do |attendee| #On parcourt tous les participants (objets de type User)
	  age_array << attendee.age #leur âge est stocké dans l'array des âges
	  average = average + attendee.age #leur âge est additionné pour préparer le calcul de la moyenne
    	end

          average = average / @attendees.length #on divise la somme des âges pour avoir la moyenne

    	  puts "Voici les âges des participants :"
    	  puts age_array.join(", ")
    	  puts "La moyenne d'âge est de #{average} ans"
	end

	def self.all
	  return @@event_all
	end 
end

class WorkEvent < Event
  def is_event_acceptable?
    if @attendees.length > 3 || @duration > 60
      puts "Cette réunion ne respecte pas nos bonnes pratiques !"
      return false
    else
      puts "Cette réunion est OK."
      return true
    end
  end
end
