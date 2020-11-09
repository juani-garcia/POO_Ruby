require_relative 'expression'

class NotExpression
  include Expression

  def initialize(expr)
    @expr = expr
  end

  def evaluate
    !@expr.evaluate
  end
end
