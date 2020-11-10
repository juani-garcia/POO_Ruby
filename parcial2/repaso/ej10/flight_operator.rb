class FlightOperator

  def initialize(flight_catalog)
    @flight_catalog = flight_catalog
  end

  def buy_flight(code, member)
    flight = @flight_catalog.get_flight(code)
    flight.miles < member.get_miles(flight.airline) ? member.discount_miles(flight) : member.add_miles(flight)
  end

  def miles_status(member, airline)
    s1 = "#{member.name} no registra millas acumuladas en #{airline}"
    s2 = "Millas de #{member.name} en #{airline}: #{member.get_miles(airline)}"
    member.has_registered ? s1 : s2
  end
end
