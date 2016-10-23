require 'money'
require 'money/bank/google_currency'

Money.default_bank = Money::Bank::GoogleCurrency.new

Money.use_i18n = false

puts
puts "¡Bienvenido a ConveMoney La forma mas fácil de convertir dinero en cualquier moneda!!!"
puts
puts "Ejemplos: "
puts " 2000 USD a ARS"
puts "100 EUR a UYU"
print "> "
str = gets.chomp.strip

# 2000 USD a EUR
tokens = str.split(' ')
amount = tokens[0].to_f
origin_cur = tokens[1]
target_cur = tokens[3]

currency = Money::Currency.wrap(origin_cur)

money = Money.new(amount * currency.subunit_to_unit, origin_cur)
result = money.exchange_to(target_cur)

puts
puts "#{money.format} #{origin_cur} = #{result.format} #{target_cur}"