class Card
	attr_reader :suit, :value

	def initialize(suit, value)
		@suit = suit
		@value = value		
	end

	def value
		return 10 if ["J","Q","K"].include?(@value)
		return 11 if @value == "A"
		return @value		
	end

	def to_s
		"#{value} - #{@suit}"		
	end
end

class Deck
	attr_reader :cards

	def initialize
		@cards = []
		build_cards		
	end

	def take!
		@cards.shift 		
	end

	private 
		def build_cards
			[:trebol, :diamante, :picas, :corazon].each do |suit|
				(2..10).each do |number|
					@cards << Card.new(suit, number)
				end
				["J","Q","K","A"].each do |face|
					@cards << Card.new(suit, face)
				end
		end
		@cards.shuffle!
	end 
end

class Hand
	attr_reader :cards

	def initialize(deck)
		@deck=deck
		@cards= []
	end
	def hit!
		@cards << @deck.take!		
	end

	def value
		val = 0
		@cards.each do |card|
			val += card.value
		end
		val	
	end

	def to_s
		str = ""
		@cards.each do |card|
			str += "#{card}     "
		end
		str.strip
	end
end


=begin
	1. Repartir las cartas.
	2. Preguntar al usuario si desea carta o se planta.
		Si pide carta
			Si se pasa, ir a punto 4
			De lo contrario, volver al punto 2.
		Si se planta
			Ir al punto 3.
	3. Determinar valor que tiene el repartidor.
		Si es < 17, entregarse otra carta
			Si se pasa, ir al punto 4
			De lo contratrio, volver al punto 3.
		De lo contrario, ir al punto 4.
	4. Determina el ganador.
		Si el usuario se pasó, gana el repartidor
		Si el repartidor se pasó, gana el usuario.
		Si el repartidor tiene mas que el usuario, gana el repartidor
		De lo contrario, gana el usuario.
	5. Volver al punto 1 (nuevo juego).
=end

deck = Deck.new
dealer = Hand.new(deck)
player = Hand.new(deck)


player.hit!
player.hit!
dealer.hit!

puts "Repartidor: #{dealer}"
puts "Jugador:    #{player}"

puts
puts "Tu turno: "

while player.value < 21
	print " ¿Carta (C) o Plantas (P)? "
	option = gets.chomp
	if option == "C"
		player.hit!
		puts "  #{player}"
	elsif option == "P"
		break
	end
end


if player.value <= 21
	puts 
	puts "Turno del repartidor:"
	dealer.hit!
	puts "  #{dealer}"
	while dealer.value < 17
		dealer.hit!
		puts "   #{dealer}"
	end
end

puts
if player.value > 21
	puts "PERDISTE :("
elsif dealer.value > 21
	puts "GANASTE!!!! "
elsif dealer.value == player.value
	puts "EMPATARON"
elsif dealer.value > player.value
	puts "PERDISTE :("
else
	puts "GANASTE!!!!!"	
end