def caesar_cipher(tab, n)
i = 0
x = 0
temp = []
a = 0 
b = 0
tab = tab.split('')

while i < tab.size 

	if tab[i].ord < 65 || tab[i].ord > 90 && tab[i].ord < 97 || tab[i].ord > 122
	i = i + 1 
 	elsif tab[i].ord + n > 90 && tab[i].ord + n < 97
		a = 90 - tab[i].ord
		b = n - a
		temp[x] = 64 + b
		tab[i] = temp[x]
		i = i + 1
			
	elsif tab[i].ord + n > 122
		a = 122 - tab[i].ord 
		b = n - a 
		temp[x] = 96 + b
		tab[i] = temp[x] 
		i = i + 1 
	else 
		tab[i] = tab[i].ord + n 
		i = i + 1  
	end

end
i = 0 
while i < tab.size 
	
	tab[i] = tab[i].chr
	i = i + 1
end  

return tab.join("")

end 

print caesar_cipher("What a string ! ", 5)

