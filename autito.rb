class Car
	attr_accessor :velo
	def velocity
		puts @velo
	end
	def initialize
		@velo=0
	end
	def accelerate(a=1)
		@velo=@velo+a
	end
	def brake(b=1)
		if @velo>=b
			@velo=@velo-b
		else
			@velo=0
		end
	end
end

class Bus<Car		
end


car = Car.new
car.velocity
car.accelerate(0)
car.accelerate
car.accelerate
car.velocity
car.accelerate(5)
car.brake
car.velocity
bus = Bus.new
bus.accelerate(7)
bus.velocity
