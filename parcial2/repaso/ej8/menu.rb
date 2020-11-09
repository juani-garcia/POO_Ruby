class Menu
  def initialize(menu_descrpition)
    @manu_description = menu_descrpition
    @authorized = []
  end

  def authorize(entity)
    @authorized << entity
  end

  def access?(people)
    @authorized.include?(people) || access_company?(people)
  end

  def access_company?(people)
    people.companies.each {|e| return true if @authorized.include?(e)}
    false
  end

end
