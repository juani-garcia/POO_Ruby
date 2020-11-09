class ComplexNumber
  attr_reader :real, :img

  def initialize(real, img)
    @real = real
    @img = img
  end

  def +(other)
    ans_real = @real + other.real
    ans_img = @img + other.img
    ComplexNumber.new(ans_real, ans_img)
  end

  def to_s
    @real.to_s + ' + ' + @img.to_s + 'i'
  end
end
