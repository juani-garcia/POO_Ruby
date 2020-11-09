class Bag

  def initialize
    @elems = Hash.new{0}
  end

  def add(elem)
    @elems[elem] += 1
  end

  def size
    @elems.length
  end

  def count(elem)
    @elems[elem]
  end

  def delete(elem)
    @elems[elem] -= 1 if @elems.key? elem
    @elems.delete(elem) if @elems[elem].zero?
    @elems[elem]
  end

  def to_s
    @elems.to_s
  end
end
