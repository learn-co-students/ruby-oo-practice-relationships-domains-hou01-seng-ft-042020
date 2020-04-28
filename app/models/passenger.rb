# A passenger has many rides (name)
class Passenger
    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end
    
    def save
        self.class.all << self
    end

    def initialize(name)
        @name = name
        save
    end

    def rides
        Ride.all.select {|ride| ride.passenger == self}
    end

    def drivers
        rides.map {|ride| ride.driver}
    end

    def total_distance
        total = 0
        rides.map {|ride| total += ride.distance}
        total
    end

    def self.premium_members
        all.select {|all| all.total_distance > 100}
    end
end