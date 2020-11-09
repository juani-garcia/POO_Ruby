class Stack
  def initialize
    @stack = Array.new
  end

  def empty?
    @stack.empty?
  end

  def pop
    empty_check
    @stack.pop
  end

  def push(elem)
    @stack.push(elem)
  end

  def peek
    empty_check
    @stack.last
  end

  private def empty_check
    raise 'Stack is empty' if empty?
  end
end
