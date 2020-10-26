class Dish < ActiveRecord::Base

    belongs_to :restaurant, counter_cache: :count_of_dishes
    has_many :dish_tags
    has_many :tags, through: :dish_tags

    def add_tag(name)
        tag = Tag.create(name: name)
        DishTag.create(tag_id: tag.id, dish_id: self.id)
        return tag
    end 

    def vegetarian_dishes
    end 

end