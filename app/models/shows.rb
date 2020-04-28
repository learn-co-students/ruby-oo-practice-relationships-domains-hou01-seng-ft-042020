# A show has many actors and charactors, a show has many episodes
class Show 
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
    
    def episodes
        Episode.all.select {|epi| epi.show == self}
    end

    def charactors
        episodes.map {|epi| epi.charactors}.uniq
    end

    def actors
        charactors.map {|char| char.actor}
    end

    def on_the_big_screen
        Movie.all.select {|movie| movie.title == self.title}
    end

end