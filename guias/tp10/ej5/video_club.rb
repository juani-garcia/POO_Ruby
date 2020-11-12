require_relative 'customer'

class VideoClub

  def initialize
    @customers, @movies = {}, {}
  end

  def add_movie(name, category)
    @movies[name] = category unless @movies.key? name
  end

  def add_customer(name)
    @customers[name] = Customer.new(name) unless @customers.key? name
  end

  def rent(movie, customer, days)
    raise RuntimeError, "Customer #{customer} not found" unless @customers.key? customer
    raise RuntimeError, "Customer #{movie} not found" unless @movies.key? movie
    category = @movies[movie]
    @customers[customer].add_points(category.points(days))
    @customers[customer].add_charges(category.cost(days))
  end

  def resume(customer)
    raise RuntimeError, "Customer #{customer} not found" unless @customers.key? customer
    @customers[customer].to_s
  end

end