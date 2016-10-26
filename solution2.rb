def phrase(array)	
	cad=""
	array.each_with_index do |elemento,index|
		if array.length-index>2
			cad= cad+elemento + ", "
			
		else if 
			array.length-index==2
				cad= cad+elemento + " y "
			else
				cad= cad+elemento
			end
	end
end
	puts cad
end

phrase(['uno', 'dos', 'tres'])
phrase(['uno'])
phrase(['uno', 'dos', 'tres','coman','sabaaaaa'])
phrase([]) 