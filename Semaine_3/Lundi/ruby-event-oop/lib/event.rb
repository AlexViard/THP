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
	
	def self.all
	  return @@event_all
	end 
end
