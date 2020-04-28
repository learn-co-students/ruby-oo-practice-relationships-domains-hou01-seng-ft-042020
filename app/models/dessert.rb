# A dessert belongs to a bakery and a dessert has many ingredients
class Dessert
    attr_accessor :name, :bakery

    @@all = []

    def self.all
        @@all
    end
    
    def save
        self.class.all << self
    end

    def initialize(name, bakery)
        @name = name
        @bakert = bakery
        save
    end

    def ingredients
        Ingredients.all.select {|ingre| ingre.dessert == self}
    end

    def calories
        calories = 0
        ingredients.map {|ingre| calories += ingre.calorie_count}
        calories
    end
end