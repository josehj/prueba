class CreateJoinedFactions < ActiveRecord::Migration
  def change
    create_table :joined_factions do |t|
      t.boolean :isAdmin
      t.references :user, index: true, foreign_key: true
      t.references :faction, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
