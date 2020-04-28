class Trainer
    attr_accessor :name, :pay_amount, :bonus

    @@all = []

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def initialize(name, pay_amount)
        @name = name
        @pay_amount = pay_amount
        @bonus = 0
        save
    end

    def clients
        Client.all.select {|client| client.trainer == trainer}
    end

    def locations
        clients.map {|client| client.location}
    end

    def self.most_clients
        top_trainer = @@all.max_by {|trainer| trainer.clients.count}
        top_trainer.bonus = 100
    end

    def total_pay
        total = (clients.count * @pay_amount) + @bonus
    end
end