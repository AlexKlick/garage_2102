
require './lib/car'
require 'minitest/autorun'
require 'minitest/pride'
class CarTest < Minitest::Test
  def test_instance_vars
    car_1 = Car.new({description: 'Green Ford Mustang', year: '1967'})

    assert_equal car_1.make, "Ford"
    assert_equal car_1.model, "Mustang"
    assert_equal car_1.color, "Green"
    assert_equal car_1.year, "1967"
    assert_equal car_1.age, 54
  end
end
