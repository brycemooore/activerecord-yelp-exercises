class Restaurant < ActiveRecord::Base

    has_many :dishes

    def add_dish(name)
        Dish.create(name: name, restaurant_id: self.id)
    end 

    def self.tenth
        Restaurant.order(:id).limit(1).offset(9)
    end

    def self.mcdonalds
        Restaurant.find_by(name: "Mcdonalds")
    end

    def self.with_long_names
        Restaurant.where("length(name) > 12")
    end

    def self.max_dishes
        Restaurant.order("count_of_dishes DESC").limit(1)
    end

    def self.focused
        Restaurant.where("count_of_dishes < 5")
    end

    def self.large_menu
        Restaurant.where("count_of_dishes > 20")
    end

    def self.vegetarian
        Dish.where(dish_tags: "Vegetarian", restaurant_id: )
    end


end 