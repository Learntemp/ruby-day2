# Story: As a programmer, I can make a vehicle.
# Hint: Create a class called Vehicle, and create a variable called my_vehicle which contains an object of class Vehicle.
#
class Vehicle
  def set_given_car(car)
    @given_car = car
  end

  def get_given_car()
    @given_car
  end
end

my_vehicle = Vehicle.new()
my_vehicle.set_given_car('Ferrari')


# Story: As a programmer, I can make a car.
# Hint: Create a class called Car, and create a variable called my_car which contains an object of class Car.
#
class Car
  def set_given_car(car)
    @given_car = car
  end

  def get_given_car()
    @given_car
  end
end

my_car = Car.new()
my_car.set_given_car('Porsche')

# Story: As a programmer, I can tell how many wheels a car has; default is four.
# Hint: initialize the car to have four wheels, then create a method to return the number of wheels.
#
class Car
  def initialize
    @wheels = "4"
  end

  def set_given_car(car)
    @given_car = car
  end

  def get_given_car()
    @given_car
  end

  def wheels
    @wheels
  end
end

my_car = Car.new()
my_car.set_given_car('Porsche')

# Story: As a programmer, I can make a Tesla car.
# Hint: Create an variable called my_tesla which is of class Tesla which inherits from class Car.
#
my_tesla = Car.new()
my_tesla.set_given_car('Model X')

# Story: As a programmer, I can make a Tata car.
#
my_tata = Car.new()
my_tata.set_given_car('Tata')
# Story: As a programmer, I can make a Toyota car.
#
my_toyota = Car.new()
my_toyota.set_given_car('Toyota')
# Story: As a programmer, I can tell which model year a vehicle is from. Model years never change.
# Hint: Make model year part of the initialization.
#
class Car
  def initialize (year)
    @wheels = "4"
    @model_year = year
  end

  def set_given_car(car)
    @given_car = car
  end

  def get_given_car()
    @given_car
  end

  def wheels
    @wheels
  end

  def model_year
    @model_year
  end
end
my_ferrari = Car.new "2014"
my_ferrari.set_given_car('Ferrari')
        # my_ford.model_year << "2012" Another way to do it

# Story: As a programmer, I can turn on and off the lights on a given Vehicle.
# Hint: Create method(s) to allow programmer to turn lights on and off. Which class are the methods in?
#
class Car

  def initialize
    @lights = "lights off"
  end

  def lights_toggle
    if lights == "lights off"
      @lights = "lights on"
    elsif lights == "lights on"
      @lights = "lights off"
    end
  end

  def set_given_car(car)
    @given_car = car
  end

  def get_given_car()
    @given_car
  end

  def lights
    @lights
  end
end


# Story: As a programmer, I can determine if the lights are on or off. Lights start in the off position.
#
# Tests:
# vehicle = Vehicle.new(...)
# vehicle.lights_on? # should return false
# vehicle.lights_on = true
# vehicle.lights_on? # should return true
# vehicle.lights_on = false
# vehicle.lights_on? # should return false
class Car

  def initialize
    @lights = false
  end

  def lights_toggle
    if lights == false
      @lights = true
    else
      @lights = false
    end
  end

  def lights_on
    if lights == false
      puts "Your lights are off"
    else
      puts "Your lights are on"
    end
  end

  def set_given_car(car)
    @given_car = car
  end

  def get_given_car()
    @given_car
  end

  def lights
    @lights
  end
end

# Story: As a programmer, I can signal left and right. Turn signals starts off.
#
class Car

  def initialize
    @blink_left = ""
    @blink_right = ""

  end

 def turn_left
   @blink_left = "left blinker on"
 end

 def turn_right
   @blink_right = "right blinker on"
 end

  def set_given_car(car)
    @given_car = car
  end

  def get_given_car()
    @given_car
  end

  def blink_left
    @blink_left
  end

  def blink_right
    @blink_right
  end
end
# Story: As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.
#
class Car
  def initialize
    @speed = 0
  end

  def set_given_car(car)
    @given_car = car
  end

  def get_given_car()
    @given_car
  end

  def speed
    @speed
  end
end

# Story: As a programmer, I can speed my Teslas up by 10 per acceleration.
#
class Tesla < Car

  def speed_up
    @speed = @speed + 10
    puts @speed.to_s + "mph"
  end
end

# Story: As a programmer, I can slow my Teslas down by 7 per braking.
#
class Tesla < Car

  def speed_up
    @speed = @speed + 10
    puts @speed.to_s + "mph"
  end
  def slow_down
    @speed = @speed - 7
    puts @speed.to_s + "mph"
  end
end
# Story: As a programmer, I can speed my Tatas up by 2 per acceleration.
#
class Tatas < Car

  def speed_up
    @speed = @speed + 2
    puts @speed.to_s + "mph"
  end
end
# Story: As a programmer, I can slow my Tatas down by 1.25 per braking.
#
class Tatas < Car

  def speed_up
    @speed = @speed + 2
    puts @speed.to_s + "mph"
  end

  def slow_down
    @speed = @speed - 1.25
    puts @speed.to_s + "mph"
  end

end
# Story: As a programmer, I can speed my Toyotas up by 7 per acceleration.
#
class Toyota < Car

  def speed_up
    @speed = @speed + 7
    puts @speed.to_s + "mph"
  end

end
# Story: As a programmer, I can slow my Toyotas down by 5 per braking.
#
class Toyota < Car

  def speed_up
    @speed = @speed + 7
    puts @speed.to_s + "mph"
  end

  def slow_down
    @speed = @speed - 5
    puts @speed.to_s + "mph"
  end

  def information
    puts "My Toyota has " + @wheels.to_s + " wheels and the speed is going " + @speed.to_s + "mph"
  end

end
# Story: As a programmer, I can call upon a car to tell me all it's information.
# Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.
#
class Car
  def initialize (year)
    @wheels = "4"
    @model_year = year

  end

  def set_given_car(car)
    @given_car = car
  end

  def get_given_car()
    @given_car
  end

  def wheels
    @wheels
  end

  def model_year
    @model_year
  end

end
# Story: As a programmer, I can keep a collection of two of each kind of vehicle, all from different years.
# Hint: Create two of each vehicles, all from different model years, and put them into an Array.
#

cars_hash.push(car1)

cars_hash = [{:model_year=>"1995", :model=>"Toyota"}, {:model_year=>"2006", :model=>"Toyota"}, {:model_year=>"1990", :model=>"Tatas"},{:model_year=>"1984", :model=>"Tatas"}, {:model_year=>"2017", :model=>"Tesla"}, {:model_year=>"2012", :model=>"Tesla"}]

# Story: As a programmer, I can sort my collection of cars based on model year.
#
cars_hash.sort_by { |k| k[:model_year]}
# Story: As a programmer, I can sort my collection of cars based on model.
# Hint: Sort based on class name.
#
cars_hash.sort_by { |v| v[:model]}

# Story: As a programmer, I can sort my collection of cars based on model and then year.
# Hint: Find out how the spaceship operator can help you with an array.
# before this you have to do .to_s
arr.sort_by { |k,v| [v.model,k.model_year]}
arr.sort_by { |v| v.class.to_s}

##fucking around with model assignment  and found out i'm stupid  the cars class is the model  arr.sort_by { |v| v.class.to_s}


class Toyota < Car
  def initialize (year)
    super
    @model = .class.to_s
  end
  def speed_up
    @speed = @speed + 7
    puts @speed.to_s + "mph"
  end

  def slow_down
    @speed = @speed - 5
    puts @speed.to_s + "mph"
  end

  def information
    puts "My Toyota has " + @wheels.to_s + " wheels and the speed is going " + @speed.to_s + "mph"
  end

  def model
    @model
  end
end

class Tesla < Car
  def initialize (year)
    super
    @model = Tesla
  end
  def speed_up
    @speed = @speed + 10
    puts @speed.to_s + "mph"
  end
  def slow_down
    @speed = @speed - 7
    puts @speed.to_s + "mph"
  end
  def model
    @model
  end
end

class Tatas < Car
  def initialize (year)
    super
    @model = Tatas
  end
  def speed_up
    @speed = @speed + 2
    puts @speed.to_s + "mph"
  end

  def slow_down
    @speed = @speed - 1.25
    puts @speed.to_s + "mph"
  end
  def model
    @model
  end

end
## end of fucking around with model assigner
