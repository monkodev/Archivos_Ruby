

def write(file,text)	
	# Crea un nuevo fichero, y escribe
	File.open(file, 'w') do |f2|  
  	f2.puts text
	end

end

def read(file)
if File.exist?(file)==false
	puts nil
else
	File.open(file, 'r') do |f1|
  	while linea = f1.gets
    	puts linea
  	end
	end
 
end
end

read('tst.txt')


