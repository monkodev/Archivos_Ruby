def load_tasks(file)
	if File.exist?(file)==false
		hash=Hash[{}]
	else
			array=IO.readlines(file)
			if array.empty?
				hash=Hash[{}]
			else
				ha = File.foreach(file).map { |line| line.split(',') }
				#hash = ha[0][0]
				for i in (0..ha.size-1)
					hash= {:id => ha[i][0], :name => ha[i][1], :done => ha[i][2] }
				end
				#hash=ha[0][0]
				#h=array.split(/\s*,\s*/)
				#hash= h
				
  			end		
	end
	puts hash
end
load_tasks('test.txt')


