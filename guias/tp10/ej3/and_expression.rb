require_relative 'expression'

class AndExpression
  include Expression

  def initialize(exp1, exp2)
    @exp1, @exp2 = exp1, exp2
  end

  def evaluate
    @exp1.evaluate && @exp2.evaluate
  end
end
