class CreateCooks < ActiveRecord::Migration[5.1]
  def change
    create_table :cooks do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password_digest
    end
  end
end
