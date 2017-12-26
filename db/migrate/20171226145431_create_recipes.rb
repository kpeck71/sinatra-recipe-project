class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :ingredients
      t.integer :cook_id
      t.integer :restaurant_id
    end
  end
end
