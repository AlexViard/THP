def signup 
puts "Saisissez votre mot de passe"
print "> "
password = gets.chomp
return(password)
end

def login(password) 
	
i = 0
	puts"Entrez votre mot de passe"
	while (i != 3) 
	print "> "
	mdp = gets.chomp
	
	i = i + 1 
	
	if password ==  mdp 
		return(1)
	
	elsif i == 3 
		puts"Vous avez atteint le nombre d'essais, veuillez contacter votre administrateur ! " 
	else 
		puts"Mot de passe incorrect, veuillez réessayer"

end 
end 
end 

def welcome_screen
	
	puts "Bienvenue, voici les codes "
	puts "	NASA CODE" 
	puts "> NFKWT-HFWJW-93DP7-M3GMQ-FM49M"
	puts "> NF3RK-PHM7C-8743J-X2X92-J44DB"
	puts "> FJT8C-2WNKT-DKPQG-JYHXD-YBFFC"

end 

def perform
	
	if login(signup) == 1 
		welcome_screen
 
end
end  
perform  
