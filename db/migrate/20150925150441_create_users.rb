class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :user_name
      t.string :password
      t.integer :points

      t.timestamps null: false
    end
  end
end
