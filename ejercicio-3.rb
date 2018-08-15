class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

class Car < Vehicle
  @@namecar =  0
  def initialize(model, year)
    super
    @@namecar += 1
  end

  def self.cantidad_de_instacias
    puts "Cantidad de instancias = #{@@namecar}"
  end

  def engine_start
    super
    'El motor se a encendido' if @start
  end

  def self.cars
    10.times do |carro|
      Car.new("honda#{carro}", "200#{carro}")
    end
  end
end

e = Car.new('camaro', 2000)
puts e.engine_start
Car.new('camaro', 2000)
puts Car.cantidad_de_instacias
puts Car.cars
