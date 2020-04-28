# episode has many charactors
class Episode
    attr_accessor :title, :show

    @@all = []

    def self.all
        @@all
    end
    
    def save
        self.class.all << self
    end

    def initialize(title, :show)
        @title = title
        @show = show
        save
    end

    def charactors
        Charactor.all.select {|char| char.work == self}
    end

    def actors
        charactors.map {|char| char.actor}
    end
end