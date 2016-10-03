=begin
	1. Solcitar el peso de la persona
	2. Solicitar la estatura de la persona.
	3. Calcular IMC.
	4. Determinar  si la persona está baja de peso, normal o con sobrepeso.
	4.a. Si el IMC < 18.5 esta baja de peso
	4.b. Si el IMC esta entre 18.5 y 24.99 esta normal
	4.c. Si el IMC>=25 tiene sobrepeso
	5. Imprimir el resultado
=end

print "Ingresa tu peso (KG): "
weight = gets.chomp.to_f

print "Ingresa tu estatura (metros): "
height = gets.chomp.to_f

bmi = weight/height**2

puts
print "#{bmi.round(2)} "

if bmi < 18.5
	puts "(BAJA DE PESO)"
elsif bmi < 25
	puts "(NORMAL)"
else
	puts "(SOBREPESO)"
end