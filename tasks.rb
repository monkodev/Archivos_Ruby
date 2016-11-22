def load_tasks(file)
	
	hashi=[]
	if File.exist?(file)==false
		
	else
			array=IO.readlines(file)
			if array.empty?
				
			else
				prueba = Array.new(2, Hash.new)
				# prueba crea => [{}, {}]

				a=["id: ","name: ","done: "]
				
				ha = File.foreach(file).map { |line| line.split(',') }
				#a.map! {|x,y,z| x +  }
				#hashi=a+ha
				#hash = ha[0][0]
				hashi=a.merge! ha
				for i in (0..ha.size-1)						
					#hashi[i]= { "id:".to_s => ha[i][0].to_i, "name:".to_s => ha[i][1], "done:".to_s => (ha[i][2].chomp).to_s.eql?('true') ? true : false }						
					#hashi[i]= { ha[i][0].to_i, ha[i][1],  (ha[i][2].chomp).to_s.eql?('true') ? true : false }
					a.merge! 
					#hashi=a
				end
			end		
	end
	puts hashi
end

load_tasks('test.txt')


