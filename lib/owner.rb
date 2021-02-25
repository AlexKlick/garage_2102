require './lib/car'
class Owner
  attr_reader :name, :occupation, :cars
  def initialize(name, occupation)
    @name = name
    @occupation = occupation
    @cars = []
    @vintage_cars = []
  end

  def buy(car_description)
    desc_array = car_description.split(' ')
    hash = Hash.new
    hash[:description] = desc_array[1..4].join(' ')
    hash[:year] = desc_array[0]
    #require 'pry'; binding.pry
    car_to_add = Car.new(hash)
    cars << car_to_add
  end

  def vintage_cars
    @cars.find_all{|car| car.age > 25}
  end
end