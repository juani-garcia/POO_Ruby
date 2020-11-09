require_relative 'menu'

class MenuItem < Menu
  def initialize(menu_description, parent)
    super(menu_description)
    @parent = parent
  end

  def access?(people)
    @parent.access?(people) || super
  end

end
