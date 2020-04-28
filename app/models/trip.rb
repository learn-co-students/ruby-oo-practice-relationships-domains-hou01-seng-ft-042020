# A trip belongs to a listing and a guest
class Trip

    attr_accessor :listing, :guest

    @@all = []

    def self.all
        @@all
    end
    
    def save
        self.class.all << self
    end

    def initialize(listing, guest)
        @listing = listing
        @guest = guest
        save
    end
end