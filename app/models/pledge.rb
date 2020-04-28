class Pledge
    attr_accessor :amount
    attr_reader :user, :project

    @@all = []

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def initialize(user, project, amount)
        @user = user
        @project = project
        @amount = amount
        save
    end
end