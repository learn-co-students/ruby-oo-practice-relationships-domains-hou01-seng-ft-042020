# actors have many characters
class Actor 
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

    def charactors
        Character.all.select {|char| char.actor == self}
    end

    def movies
        Movies.all.select {|movie| movie.actors == self}
    end

    def shows
        Shows.all.select {|show| show.actors == self}
    end

    # def episodes
    # end

    def self.most_charactors
        all.max_by {|all| all.charactors.count}
    end
end