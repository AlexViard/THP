def echo(echo) 
	return echo
end 

def shout(tab) 

	return tab.upcase 
end 

def repeat(tab, n=2) 

	
	return "#{tab} "* (n - 1) + "#{tab}" 

end 

def start_of_word(tab, n=0)

	if n != 0
		n = n - 1 
 		return tab[0..n]
	else 
		return tab[0..n]
end

	
end 

def first_word(tab)

return tab.split(' ')[0]

end 

def titleize(tab) 

i = 0 
tab1 = []

tab = tab.split(' ')
tab1 << tab[i].capitalize 
i = i + 1 
while i < tab.size 
if tab[i] == "and" || tab[i] == "the"
	tab1 << tab[i]
else 
 tab1 << tab[i].capitalize

end
i = i + 1 
end 
return tab1*" " 
end 
