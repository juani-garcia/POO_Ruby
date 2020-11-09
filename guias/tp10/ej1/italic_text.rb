require_relative 'format_text'

class ItalicText < FormatText
  def initialize(text)
    @text = text
    @letter = 'i'
  end
end
