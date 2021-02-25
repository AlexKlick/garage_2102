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
    all_cars = self.all_cars
    all_cars.sort_by{|car| car.age }[-3..-1]
  end
end