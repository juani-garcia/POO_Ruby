class Employee
  attr_reader :companies

  def initialize(name, companies)
    @name = name
    @companies = companies
  end
end
