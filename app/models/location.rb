class Location
    attr_accessor :name, :marketing_spend

    @@all = []

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def initialize(name, marketing_spend)
        @name = name
        @marketing_spend = marketing_spend
        save
    end

    def clients
        Client.all.select {|client| client.location == self}
    end

    def trainers
        clients.map {|client| client.trainer}
    end

    def self.least_clients
        least_client = @@all.min_by {|location| location.clients.count}
        least_client.marketing_spend = marketing_spend * 2
    end
end