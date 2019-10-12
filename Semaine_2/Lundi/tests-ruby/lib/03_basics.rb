def who_is_bigger(a, b, c)


	if a == nil || b == nil || c == nil  
		return ("nil detected")
	end
	 
tab = [a, b, c]
	if tab.max == a 
	return ("a is bigger")
	elsif tab.max == b
	return ("b is bigger")
	else 
	("c is bigger")

end
end


def reverse_upcase_noLTA(tab)

return tab.upcase.reverse!.delete "ALT"

end

def array_42(tab)

 return tab.include?(42)

end 

def magic_array(tab)

return tab.flatten.sort.map{|i| i * 2}.uniq.delete_if { |i| i%3 == 0}
	
end

