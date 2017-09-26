require 'minitest/autorun'
require 'minitest/rg'
require_relative '../river.rb'
require_relative '../fish.rb'


class TestRiver < MiniTest::Test

  def setup
    all_fish = #an array of fish objects
    [
      @fish1 = Fish.new("fisher"),
      @fish2 = Fish.new("fisheyboy"),
      @fish3 = Fish.new("swimboy"),
      @fish4 = Fish.new("notafish"),
      @fish5 = Fish.new("bird"),
    ]

    @river = River.new("Muddy River", all_fish)
  end

  def test_name()
    assert_equal("Muddy River", @river.name())
  end

  def test_fish_count()
    assert_equal(5, @river.fish_count())
  end

end
