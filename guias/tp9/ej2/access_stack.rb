require_relative 'stack'

class AccessStack < Stack
  attr_reader :pop_accesses, :push_accesses

  def initialize
    super
    @pop_accesses = 0
    @push_accesses = 0
  end

  def pop
    aux = super
    @pop_accesses += 1
    aux
  end

  def push(elem)
    aux = super
    @push_accesses += 1
    aux
  end
end
