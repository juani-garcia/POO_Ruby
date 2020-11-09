class Item
  attr_reader :amount

  def initialize(product, amount)
    @product, @amount = product, amount
  end

  def to_s
    "#{format('%-15s', @product.name)}\t#{@amount}\t$#{format('%.2f', @product.price)}"
  end

  def total
    @amount * @product.price
  end
end
