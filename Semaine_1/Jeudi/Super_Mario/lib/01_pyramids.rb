def half_pyramid

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

end

def full_pyramid

puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print ">"
nombre = gets.chomp.to_i

puts "Voici la pyramide"

diez = '#'
espace = ' '
c = 1
j = nombre - 1 

	
	while c <= 2 * nombre
	puts "#{espace * j}#{diez * c}"
	c = c + 2
	j = j - 1
end 
end 

def wtf_pyramid
	
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?(choisis un nombre impair)"
	print ">"
	nombre = gets.chomp.to_i
	if nombre % 2 == 0 
		puts "Nombre pair non pris en compte"
	else 
	puts "Voici la pyramide"

 	diez = '#'
  	espace = ' '
  	c = 1
  	j = nombre - 1
 
 
        while c <= nombre - 1
        puts "#{espace * j}#{diez * c}"
        c = c + 2
        j = j - 1
end 
	while c > 0  
	puts "#{espace * j}#{diez * c}"
	c = c - 2 
	j = j + 1  
	
	
end 
end
end 

