class CreateCategoryRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :category_recipes do |t|
      t.belongs_to :category
      t.belongs_to :recipe
      t.integer :category_id
      t.integer :recipe_id
    end
  end
end
