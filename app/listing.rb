
class Listing
    attr_accessor :type, :city
    @@all = []

    def initialize(type, city)
        @type = type
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

end