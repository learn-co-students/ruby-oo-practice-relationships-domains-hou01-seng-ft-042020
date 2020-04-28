# Charactors have on actore but have multiple mvies or shows
class Charactor 
    attr_accessor :name, :actor, :work

    @@all = []

    def self.all
        @@all
    end
    
    def save
        self.class.all << self
    end

    def initialize(name, actor, work)
        @name = name
        @actor = actor
        @work = work
        save
    end

    def movies
        Movie.all.select {|movie| movie == self.work}
    end

    def shows
        Show.all.select {|show| show == self.work}
    end

    def appearance_count
        total = 0
        total = shows.count + movies.count
        total
    end

    # def episodes
    #     show
    # end

    def self.most_appearances
        all.max_by {|all| all.appearance_count}
    end
end