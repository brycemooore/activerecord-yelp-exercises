class Restaurant < ActiveRecord::Base

    has_many :dishes

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
        # Dish.group('restaurant_id').order('count_all DESC').count
        Restaurant.where(dishes.count > 20)
        # sorted_restaurants = Restaurant.all.sort {|rest_a,rest_b| rest_b.dishes.length <=> rest_a.dishes.length}
    end

    # def self.focused
    #     Restaurant.where("dishes.count <= 5")
    # end

    # def self.large_menu
    #     Restaurant.having("length(dishes) > 20")
    # end

    # def self.vegetarian
    #     Dish.where(dish_tags: "Vegetarian", restaurant_id: )
    # end


end 