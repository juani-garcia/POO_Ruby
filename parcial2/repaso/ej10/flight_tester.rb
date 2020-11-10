require_relative 'flight_catalog'
require_relative 'flight_operator'
require_relative 'member'

flight_catalog = FlightCatalog.new

flight_catalog.add_flight(Flight.new('LA1','LATAM',200,600))
flight_catalog.add_flight(Flight.new('LA2','LATAM',400,3000))
flight_catalog.add_flight(Flight.new('LA3','LATAM',40,200))
flight_catalog.add_flight(Flight.new('UA1','United',3500,5000))

flight_operator = FlightOperator.new(flight_catalog)

juan = Member.new('Juan', GoldCategory.new) # Juan tiene Categoría Gold

puts flight_operator.miles_status(juan, 'United') # 0
puts flight_operator.miles_status(juan, 'LATAM') # 0

puts flight_operator.buy_flight('UA1', juan) # 3500

puts flight_operator.miles_status(juan, 'United') # 2000 por el tope de categoría
puts flight_operator.miles_status(juan, 'LATAM') # 0

malena = Member.new('Malena', PlatinumCategory.new) # Malena tiene Categoría Platinum

puts flight_operator.miles_status(malena, 'United') # No registra millas
puts flight_operator.miles_status(malena, 'LATAM') # No registra millas

puts flight_operator.buy_flight('UA1', malena) # 3500
puts flight_operator.buy_flight('LA1', malena) # 200

puts flight_operator.miles_status(malena, 'United') # 6250.0 = 5000 * 1.25
puts flight_operator.miles_status(malena, 'LATAM') # 750.0 = 600 * 1.25

puts flight_operator.buy_flight('LA2', malena) # 400

puts flight_operator.miles_status(malena, 'United') # 6250.0
puts flight_operator.miles_status(malena, 'LATAM') # 4500.0 = 750.0 + 3000 * 1.25

puts flight_operator.buy_flight('LA3', malena) # 0 porque tenía 200 millas

puts flight_operator.miles_status(malena, 'United')  # 6250.0
puts flight_operator.miles_status(malena, 'LATAM') # 4300.0 = 4500.0 - 200.0
