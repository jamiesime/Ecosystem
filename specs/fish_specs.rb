require 'minitest/autorun'
require 'minitest/rg'
require_relative '../fish.rb'


class TestFish < MiniTest::Test

  def setup()
    @fishy = Fish.new("gulper")
  end

  def test_name()
    assert_equal("gulper", @fishy.name())
  end

end
