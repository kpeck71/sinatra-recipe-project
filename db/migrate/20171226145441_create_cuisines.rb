class CreateCuisines < ActiveRecord::Migration[5.1]
  def change
    create_table :cuisines do |t|
      t.string :name
      t.string :recipe_id
    end
  end
end
