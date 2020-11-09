require_relative 'html_text'

class FormatText
  include HTMLText

  def initialize
    raise 'Abstract class'
  end

  def source
    "<#{@letter}>#{@text.source}</#{@letter}>"
  end

end
