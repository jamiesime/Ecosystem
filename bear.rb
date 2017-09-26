



class Bear

  def initialize(name, stomach)
    @name = name
    @stomach = stomach
  end

  def name()
    return @name
  end

  def stomach()
    return @stomach
  end

  def take_fish(river)
    eaten = river.fish().pop()
    @stomach << eaten
    return @stomach.count
  end

  def food_count()
    @bear.stomach().count()
  end

  def roar()
    return "Road! Oops."
  end


end
