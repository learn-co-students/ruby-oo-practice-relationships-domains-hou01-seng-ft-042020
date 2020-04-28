# create files for your ruby classes in this directory
# A listing hs many trips (city)
class Listing
    attr_accessor :city

    @@all = []

    def self.all
        @@all
    end
    
    def save
        self.class.all << self
    end

    def initialize(city)
        @city = city
        save
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def guests
        trips.map {|trip| trip.guest}.uniq
    end

    def trip_count
        trips.count
    end

    def self.find_all_by_city(city_name)
        all.select {|all| all.city == city_name}
    end

    def self.most_popular
        all.max_by {|all| all.trip_count}
    end
end