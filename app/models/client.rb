class Client
    attr_accessor :name, :trainer
    attr_reader :location

    @@all = []

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def initialize(name, trainer, location)
        @name = name
        @trainer = trainer
        @location = location
        save
    end

    def assign_trainer(new_trainer)
        self.trainer = new_trainer
    end

    def assign_location(new_location)
        self.location = new_location
    end
end