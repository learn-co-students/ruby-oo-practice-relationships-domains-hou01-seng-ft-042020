# A guest has many trips
class Guest
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

    def trips
        Trip.all.select {|trip| trip.guest == self}
    end

    def listings
        trips.map {|trip| trip.listing}
    end

    def trip_count
        trips.count
    end

    def self.find_all_by_name(guest_name)
        all.select {|all| all.name == guest_name}
    end

    def self.pro_traveller
        all.select {|all| all.trip_count > 1}
    end
end