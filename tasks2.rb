def load_tasks(archivo)
	
	
	
	#if File.file(archivo)?  
	#	File.read(archivo)
	#end

	f=File.open(archivo)
		contenido = f.read()
		puts contenido
		
end

load_tasks('ttest.txt')