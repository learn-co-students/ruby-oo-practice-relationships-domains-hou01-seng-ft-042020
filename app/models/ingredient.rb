# An ingredient belongs to dessert (calorie count)
class Ingredient
    attr_accessor :name, :calorie_count, :dessert, :bakery

    @@all = []

    def self.all
        @@all
    end
    
    def save
        self.class.all << self
    end

    def initialize(name, calorie_count, dessert, bakery)
        @name = name
        @calorie_count = calorie_count
        @dessert = dessert
        save
    end

    def self.find_all_by_name(ingredient)
        all.select {|ingre| 
        if ingre.name.include? "#{ingredient}"
            ingre.name
        }
    end

end