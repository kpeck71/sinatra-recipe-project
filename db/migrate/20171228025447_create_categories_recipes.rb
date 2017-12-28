class CreateCategoriesRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :categories_recipes do |t|
      t.belongs_to :category
      t.belongs_to :recipe
    end
  end
end
