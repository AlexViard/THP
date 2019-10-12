puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print ">"
nombre = gets.chomp.to_i

puts "Voici la pyramide"

a = '#'
b = ' '
c = 1 

while c <= nombre
	puts "#{b * (nombre - c)} #{a *c}" 
	c = c + 1 
end 


	
