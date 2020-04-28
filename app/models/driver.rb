# A driver has many rides (distance)
class Driver
    attr_accessor :name, :distance

    @@all = []

    def self.all
        @@all
    end
    
    def save
        self.class.all << self
    end

    def initialize(name, distance)
        @name = name
        @distance = distance
        save
    end
    
    def rides
        Ride.all.select {|ride| ride.driver == self}
    end

    def passengers
        rides.map {|ride| ride.passenger}
    end

    def self.mileage_cap(distance_cap)
        self.all.select {|all| all.distance > distance_cap}
    end
end