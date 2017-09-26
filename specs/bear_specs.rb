require 'minitest/autorun'
require 'minitest/rg'
require_relative '../bear.rb'
require_relative '../river.rb'
require_relative '../fish.rb'

class TestBear < MiniTest::Test

  def setup()
    all_fish = #an array of fish objects
    [
      @fish1 = Fish.new("fisher"),
      @fish2 = Fish.new("fisheyboy"),
      @fish3 = Fish.new("swimboy"),
      @fish4 = Fish.new("notafish"),
      @fish5 = Fish.new("bird"),
    ]
    @river = River.new("Muddy River", all_fish)
    @bear = Bear.new("swiper", [])
  end

  def test_name
    assert_equal("swiper", @bear.name())
  end

  def test_take_fish()
    assert_equal(1, @bear.take_fish(@river))
    assert_equal(4, @river.fish_count)
  end

  def test_food_count()
    count = @bear.take_fish(@river)
    assert_equal(1, count)

  end

  def test_roar()
    assert_equal("Road! Oops.", @bear.roar())
  end

end
