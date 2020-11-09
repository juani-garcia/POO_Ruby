require_relative 'item'

class Ticket
  @@ticket_number = 999

  def initialize
    @items = Array.new
    @id = Ticket.next_id
  end

  def self.next_id
    @@ticket_number += 1
  end

  def add(products, unit)
    new_item = Item.new(products, unit)
    @items.push(new_item)
  end

  def to_s
    s = "TICKET N° #{@id}\n"
    s += "##################\n"
    @items.sort do |item1, item2|
      aux = item1.total <=> item2.total
      aux = item1.product.name <=> item2.product.name if aux.zero?
      aux
    end.each do |item|
      s += "#{item}\n"
    end
    s += "##################\n"
    s += "TOTAL: #{format('%.2f', total)}"
  end

  def total
    @items.map{|item| item.total}.reduce(:+)
  end

end
