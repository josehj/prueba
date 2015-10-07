class CreateFactions < ActiveRecord::Migration
  def change
    create_table :factions do |t|
      t.string :name
      t.string :type
      t.integer :points
      t.string :color

      t.timestamps null: false
    end
  end
end
