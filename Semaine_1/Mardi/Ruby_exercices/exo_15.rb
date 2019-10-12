puts "Entre ton annee de naissance"
annee = gets.chomp.to_i
i = 0
while (annee != 2020)
	puts "Pendant l'annee #{annee}, tu avais #{i} ans"
	i = i + 1 
	annee = annee + 1 
end 
  
