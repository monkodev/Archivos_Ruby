def defaults(hashs)
	if hashs[:temperature] == nil
		hashs[:temperature] = 10
	end
	if hashs[:altitude] == nil
		hashs[:altitude] = 12000
	end
	if hashs[:pressure] == nil
		hashs[:pressure] = 500
	end
	puts hashs
end

defaults(:altitude =>'Giancarlo')
