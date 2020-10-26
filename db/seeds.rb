
tags = ["Spicy", "Vegetarian", "Vegan", "Comfort Food", "Chinese", "Mexican", "Thai", "Italian", "Savory", "Grilled"]

Restaurant.destroy_all
Tag.destroy_all
Dish.destroy_all
DishTag.destroy_all

20.times do 
    rest = Restaurant.create(name: Faker::Restaurant.name)
    10.times do
        dish =Dish.create(name: Faker::Food.dish, restaurant_id: rest.id)
        3.times do
            tag = Tag.create(name: tags.sample)
            DishTag.create(tag_id: tag.id, dish_id: dish.id)
        end
    end
end 