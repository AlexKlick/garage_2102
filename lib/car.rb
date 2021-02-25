
class Car
  attr_reader :make, :model, :color, :year, :age
  def initialize(data)
    description = data[:description].split(' ')
    #require 'pry'; binding.pry
    @make = description[1]
    @model = description[2]
    @color = description[0]
    @year = data[:year]
    @age = Time.new.year - @year.to_i
  end
end