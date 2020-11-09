require_relative 'html_text'

class LinkText
  include HTMLText
  def initialize(text, link)
    @text = text
    @link = link
  end

  def source
    "<a href \"#{@link}\">#{@text.source}</a>"
  end

end