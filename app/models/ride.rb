# a ride belongs to a passenger and a driver (distance as a float)
class Ride
    attr_accessor :passenger, :driver, :distance

    @@all = []

    def self.all
        @@all
    end
    
    def save
        self.class.all << self
    end

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance.to_f
        save
    end

    def self.average_distance
        average = 0
        total = 0
        all.each {|all| total += all.distance}
        average = total / all.length
        average
    end
end