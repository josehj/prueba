class CreateQpjoinTables < ActiveRecord::Migration
  def change
    create_table :qpjoin_tables do |t|
      t.references :quest, index: true, foreign_key: true
      t.references :place, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
