class Dish < ActiveRecord::Base

    belongs_to :restaurant, counter_cache: :count_of_dishes
    has_many :dish_tags
    has_many :tags, through: :dish_tags

end