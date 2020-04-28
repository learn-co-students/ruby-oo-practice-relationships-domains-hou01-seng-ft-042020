# A movie has many charactors 
class Movie
    attr_accessor :title

    @@all = []

    def self.all
        @@all
    end
    
    def save
        self.class.all << self
    end

    def initialize(title)
        @title = title
        save
    end

    def charactors
        Charactor.all.select {|char| char.work == self}
    end
    
    def actors
        charactors.map {|char| char.actor}
    end

    def self.most_actors
        all.max_by {|all| all.actors.count}
    end
end