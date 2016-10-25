def secret_code(cadena)
	cont=0
	strar=cadena.scan(/\w+/)
	strar.each do |elemento|
		case elemento 
		when "one" then cont=cont+1
		when "two" then cont=cont+2
		when "three" then cont=cont+3
    	when "four" then cont=cont+4
		when "five" then cont=cont+5
		when "six" then cont=cont+6
    	when "seven" then cont=cont+7
		when "eight" then cont=cont+8
		when "nine" then cont=cont+9
    	end
	end
	puts cont
end

secret_code("one on one") #=> 2
secret_code("five monkeys in three farms") #=> 8
secret_code("") #=> 0
secret_code("fivethreeone") #=> 0
