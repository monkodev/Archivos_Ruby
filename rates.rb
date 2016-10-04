require 'money'
require 'money/bank/google_currency'

Money.default_bank = Money::Bank::GoogleCurrency.new

Money.use_i18n = false

puts "Las tasas hoy son: "
puts "   Dolar: #{Money.new(100, :USD).exchange_to(:UYU).format}"
puts "   Euro: #{Money.new(100, :EUR).exchange_to(:UYU).format}"
puts "   Peso Mexicano: #{Money.new(100, :MXN).exchange_to(:UYU).format}"
puts "   Peso Argentino: #{Money.new(100, :ARS).exchange_to(:UYU).format}"
