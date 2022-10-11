class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed=breed
        @age=age
        @bark=bark
        @favorite_foods=favorite_foods
    end
    def name
        @name
    end
    def breed
        @breed
    end
    def age
        @age
    end
    def age=(num) #this is setter method. = is part of the method name
        @age=num
        @age
    end
    def bark
        return @bark.upcase if @age>3
        return @bark.downcase if @age<=3
    end
    def favorite_foods
        @favorite_foods
    end
    def favorite_food?(food)
        return true if @favorite_foods.include?(food.capitalize)
        false
    end
end
