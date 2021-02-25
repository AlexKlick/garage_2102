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

  def test_add_cars
    owner_1 = Owner.new('Regina George', 'Heiress')
    owner_1.buy('1967 Green Ford Mustang')
    car = Car.new({description: 'Green Ford Mustang', year: '1967'})
    assert_equal owner_1.cars[0], car
  end
end