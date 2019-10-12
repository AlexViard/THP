def translate(tab)

tab1 = []
voyelles = ["a","e","i","o","u","y"]
a = 0
i = 0
	while voyelles[a] != tab[i]
		a = a + 1
	if voyelles[a] == voyelles.size
			i = i + 1
			a = 0
	end
	end
x = i
y = i

while tab[x] != tab.size

tab1 << tab[x]
x = x + 1
end

i = 0

while tab[i] !=  tab[y]

tab1 << tab[i]
i = i + 1

end

tab1 << "ay"

return tab1

end

puts translate("apple")
