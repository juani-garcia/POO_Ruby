require_relative 'format_text'

class BoldText < FormatText
  def initialize(text)
    @text = text
    @letter = 'b'
  end

end
