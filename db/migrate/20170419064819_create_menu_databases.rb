class CreateMenuDatabases < ActiveRecord::Migration
  def change
    create_table :menu_databases do |t|
      t.references :dining_hall, index: true, foreign_key: true
      t.references :menu_item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
