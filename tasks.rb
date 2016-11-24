def load_tasks(file)	
	hashi=[]
	if File.file?(file)	
		File.foreach(file) do |linea|
			if linea.size >=1
				id, name, done = linea.split(',')
				hashi.push({ id: id.to_i, name: name, done: done == "true\n" ? true : false })
			else

			end
		end					
	end	
	puts hashi
	return hashi
end

def save_tasks(file,jash)
	if File.file?(file)	
		fail=File.open(file, 'a')
  		jash.each do |element|
  			fail.puts (element[:id].to_s + "," + element[:name] + "," + element[:done].to_s)
		end
		fail.close		
	else
		fefe=File.open(file, 'w') 
  		jash.each do |element|
  			fefe.puts (element[:id].to_s + "," + element[:name] + "," + element[:done].to_s)
		end		
		fefe.close	 			
	end
end

save_tasks('taskinggg.txt', [ { id: 3, name: "lavar platos", done: true }, { id: 4, name: "juntar papeles", done: true }, { id: 5, name: "exprimir limones", done: false }])


