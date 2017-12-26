class CreateCooks < ActiveRecord::Migration[5.1]
  def change
    create_table :cooks do |t|
      t.string :name
      t.integer :restaurant_id
    end
  end
end
