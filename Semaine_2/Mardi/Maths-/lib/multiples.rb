def is_multiple_of_3_or_5?(current_number)
	
 	
	 current_number % 3 == 0 || current_number % 5 == 0 

end

def sum_of_3_or_5_multiples(final_number)

	if final_number != final_number.to_i || final_number != final_number.to_f
		return ("Utilise un nombre entier !")
	end 
  final_sum = 0
  i = 0 
	while i < final_number 

    		if is_multiple_of_3_or_5?(i)
		final_sum = final_sum + i  
		  		
	end

	i = i + 1 
	end
 
  return final_sum

end 

