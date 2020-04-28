class User
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

    def pledges
        Pledge.all.select {|pledge| pledge.user == self}
    end

    def projects
        pledges.map {|pledge| pledge.project}
    end

    def self.highest_pledge
        Pledge.all.max_by {|pledge| pledge.amount}.user
    end

    def self.multi_pledger
        @@all.select {|user| user.pledges.count > 1}
    end

    def self.project_creator
        Pledge.all.map {|pledge| pledge.project}.user
    end
end