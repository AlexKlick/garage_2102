require './lib/car'
require './lib/owner'
require 'minitest/autorun'
require 'minitest/pride'
class OwnerTest < Minitest::Test
  def test_instance_vars
    owner_1 = Owner.new('Regina George', 'Heiress')
    assert_equal owner_1.name, "Regina George"
    assert_equal owner_1.occupation, "Heiress"
    assert_equal owner_1.cars, []
  end

  def test_add_cars
    owner_1 = Owner.new('Regina George', 'Heiress')
    owner_1.buy('1967 Green Ford Mustang')
    skip
    car1 = Car.new({description: 'Green Ford Mustang', year: '1967'})
    assert_equal owner_1.cars[0], Car.new({description: 'Green Ford Mustang', year: '1967'})
    owner_1.buy('2001 Silver BMW 3-Series')
    car2 = Car.new({description: 'Silver BMW 3-Series', year: '2001'})
    assert_equal owner_1.cars, [car1, car2]
    owner_1.buy('1963 Red Chevrolet Corvette')
    car3 = Car.new({description: 'Red Chevrolet Corvette',year: '1963'})
    assert_equal owner_1.cars, [car1, car2, car3]
  end

  def test_vintage
    owner_1 = Owner.new('Regina George', 'Heiress')
    owner_1.buy('1967 Green Ford Mustang')
    owner_1.buy('2001 Silver BMW 3-Series')
    owner_1.buy('1963 Red Chevrolet Corvette')
    car1 = Car.new({description: 'Green Ford Mustang', year: '1967'})
    car2 = Car.new({description: 'Silver BMW 3-Series', year: '2001'})
    car3 = Car.new({description: 'Red Chevrolet Corvette',year: '1963'})
    assert_equal [owner_1.vintage_cars[0].make,owner_1.vintage_cars[1].make], [car1.make, car3.make]
  end
end