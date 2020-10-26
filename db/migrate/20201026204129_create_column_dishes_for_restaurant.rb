class CreateColumnDishesForRestaurant < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :count_of_dishes, :integer
  end
end
