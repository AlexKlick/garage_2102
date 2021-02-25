require './lib/car'
require './lib/owner'
require './lib/garage'
require 'minitest/autorun'
require 'minitest/pride'

class GarageTest < Minitest::Test
  def setup
    @garage = Garage.new('Totally Safe Parking')
    @owner_1 = Owner.new('Regina George', 'Heiress')
    @owner_1.buy('1967 Green Ford Mustang')
    @owner_1.buy('2001 Blue Ford Escape')
    @owner_2 = Owner.new('Glen Coco', 'Unknown')
    @owner_2.buy('1963 Green Chevrolet Corvette')
    @owner_2.buy('2020 Silver Volvo XC90')
  end
  def test_instance_vars
    assert_equal @garage.name, "Totally Safe Parking"
  end

  def test_add_customer
    @garage.add_customer(@owner_1)
    @garage.add_customer(@owner_2)

    assert_equal @garage.customers, [@owner_1, @owner_2]
  end

  def test_all_cars
    @garage.add_customer(@owner_1)
    @garage.add_customer(@owner_2)
    #assert_equal @garage.all_cars,
    require 'pry'; binding.pry
  end

  def test_cars_by_make
    @garage.add_customer(@owner_1)
    @garage.add_customer(@owner_2)
    #assert_equal @garage.cars_by_make, {"Ford"=>[car1]}

  end

  def test_oldest_cars
    @garage.oldest_cars
  end
end