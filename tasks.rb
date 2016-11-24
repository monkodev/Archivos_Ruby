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
		File.open(file, 'w') do |f1|
  			#File.open(file).each{|linea| puts jash}
  			f1.puts jash
		end
	else
		File.open(file, 'w') do |f2|
  			# '\n' es el retorno de carro
  			f2.puts jash
  		end
	end
end

save_tasks('tasks.txt', [ { id: 1, name: "Hacer tareas", done: true }, { id: 2, name: "Lavar ropa", done: false }])


