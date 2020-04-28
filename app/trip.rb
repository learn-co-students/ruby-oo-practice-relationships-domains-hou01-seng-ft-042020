
class Trip
    attr_accessor :date, :guest, :listing
    @@all = []

    def initialize(date, guest, listing)
        @date = date
        @guest = guest
        @listing = listing
        @@all << self
    end

    def self.all
        @@all
    end

end