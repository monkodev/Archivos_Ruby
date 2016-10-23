class Car
	def velo
		@velo
	end
	def accelerate=(*a)
		if a==0 || a==nil
			@velo=@velo+1
		else
			@velo=@velo+a
		end
	end
	def brake=(*b)
		if b<=0
			@velo=@velo
		else
			if b>=velo
				@velo=0
			else
				@velo=@velo-b
			end
		end
	end
	def velocity
		puts @velo
	end
end

car = Car.new
car.velocity # => 0

car.accelerate
car.velocity # => 1

car.accelerate(2)
car.velocity # => 3

car.brake()
car.velocity # => 2

car.brake(2)
car.velocity # => 0

