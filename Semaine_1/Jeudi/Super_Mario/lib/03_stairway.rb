def jeu 

count = 0
i = 0
while count != 10 

nb = rand(1..6)
i = i + 1

if nb == 5 || nb == 6
	count = count + 1
	puts "Tu avance de 1 marche"
	puts "Actuellement tu est sur la marche #{count}"

elsif nb == 1 
	count = count - 1 
	puts "Tu recule de 1 marche"
	puts "Actuellement tu est sur la marche #{count}"

else  nb == 2 || nb == 3 || nb == 4
	puts "Tu ne bouge pas"
	puts "Actuellement tu est sur la marche #{count}" 
end 

	
end 

	puts"Bravo ! "
	return(i) 
end 


def average_finish_time 
tab = []
i = 0 
a = 0
b = 0

while tab.size != 100
tab << jeu

end
 
	while b != 100
	a = a + tab[i]
	i = i + 1
	b = b + 1
end
		
	return(puts "La moyenne est de #{a/100}")
end

def perform

	average_finish_time

end 
perform
