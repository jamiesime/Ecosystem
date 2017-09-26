


class River

  def initialize(name, river_fish)
    @name = name
    @river_fish = river_fish
  end

  def name()
    return @name
  end

  def fish()
    return @river_fish
  end

  def fish_count()
    return @river_fish.length
  end

end
