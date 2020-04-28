
class Guest
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        #returns an array of all trips a guest has made
        Trip.all.select {|trip| trip.guest == self}
    end

    def trips_by_name(name) # ** I ADDED **
        #retuns an array of all the trips a guest has made, with a given name of guest
        Trip.all.select {|trip| trip.guest.name == name}
    end

    def listings
        #returns an array of all listings a guest has stayed at
        trips.map {|trip| trip.listing}.uniq
    end

    def trip_count
        #returns the number of trips a guest has taken
        trips.count
    end

    def self.all_guests
        Trip.all.map {|trip| trip.guest}
    end

    def self.find_all_by_name(name)
        #takes an argument of a name, returns all the guests with that name
        self.all.select {|guest| guest.name == name}
    end
end