class Garage
  attr_reader :name, :customers
  def initialize(name)
    @name = name
    @customers = []
    @cars = []
  end
  def add_customer(customer)
    @customers << customer
  end
  def all_cars
    @customers.each {|customer| customer.cars.each{|car| @cars << car}}
    @cars
  end
  def cars_by_make
    if @cars = []
      all_cars
    end
    hash = Hash.new([])
    @cars.each{|car| hash[car.make] = car}
    hash
  end
  def oldest_cars
    if @cars = []
      all_cars
    end
    all_cars.sort_by{|car| car.age }[-3..-1]
  end

  def owner_of_oldest_car
    @customers.find {|customer| customer.cars.include?(oldest_cars[-1])}
  end

  def cars_in_range(range)
    if @cars = []
      all_cars.find_all {|car| (range).include?(car.year.to_i)}
    end
  end    
end