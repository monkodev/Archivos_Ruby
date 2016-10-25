class Person
  attr_accessor :name
  
  def initialize(name)
    @name = name
    raise ArgumentError, "El argumento no puede ser vacio" if name == nil || name==""
  end
  if @name == nil || @name==""
  	raise "El argumento no puede ser vacio2"
  end
  end



p = Person.new("Juan")

p.name = nil # lanza ArgumentError



