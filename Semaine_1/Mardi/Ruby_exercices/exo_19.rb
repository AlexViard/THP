tab = []
i = 1
while (i != 51)
	if i < 10
	tab[i] = "jean.dupont.0#{i}@email.fr"
	i = i + 1
	else
	tab[i] = "jean.dupont.#{i}@email.fr"
         i = i + 1
end
end
	tab.length.times do |a|
	if a % 2 == 0 
	puts tab[a]
end
end  
