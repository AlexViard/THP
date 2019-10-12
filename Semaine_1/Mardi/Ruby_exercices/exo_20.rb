puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print ">"
nombre = gets.chomp.to_i
i = 1
a = '#'
puts "Voici la pyramide :"

while i <= nombre
	puts a * i
	i = i + 1
end 

	
	
