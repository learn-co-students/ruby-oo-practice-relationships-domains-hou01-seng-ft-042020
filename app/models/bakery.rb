# A bakery has many desserts
class Bakery
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

    def desserts
        Desserts.all.select {|dess| dess.bakery == self}
    end

    def ingredients
        desserts.map {|dess| dess.ingredients}
        # Ingredients.all.select {|ingre| ingre.bakery == self}
    end

    def average_calories
        average = 0
        total = 0
        ingredients.each {|ingre| total += ingre.calorie_count}
        average = total / ingredients.length
        average
    end

    def shopping_list
        ingredients.map {|ingre| ingre.name.join(" , ")}
    end

end