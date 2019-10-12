puts "Quel age a tu ?"
age = gets.chomp.to_i
i = -1
while i < age  
i = i + 1 	
puts "Il y a #{age - i} ans, tu avais #{i} ans."  
end 
	
