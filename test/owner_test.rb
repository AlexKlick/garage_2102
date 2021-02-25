require './lib/car'
require './lib/owner'
require 'minitest/autorun'
require 'minitest/pride'
class CarTest < Minitest::Test
  def test_instance_vars
    owner_1 = Owner.new('Regina George', 'Heiress')
    assert_equal owner_1.name, "Regina George"
    assert_equal owner_1.occupation, "Heiress"
    assert_equal owner_1.cars, []
  end
end