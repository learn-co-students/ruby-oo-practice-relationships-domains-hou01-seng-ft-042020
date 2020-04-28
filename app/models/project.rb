class Project
    attr_accessor :name, :goal

    @@all = []

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def initialize(name, goal)
        @goal = goal
        @name = name
        save
    end

    def pledges
        Pledge.all.select {|pledge| pledge.project == self}
    end
    
    def backers
        pledges.map {|pledge| pledge.user}
    end

    def self.no_pledges
        @@all.select {|project| project.pledges.count == 0} 
    end

    def pledge_amount
        pledges.reduce(0) {|sum, pledge| sum + pledge.amount}
    end

    def self.above_goal
        @@all.select {|project| project.pledge_amount >= project.goal}
    end

    def self.most_backers
        @@all.max_by {|project| project.backers.count}
    end
end