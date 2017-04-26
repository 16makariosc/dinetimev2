class CreateDiningHalls < ActiveRecord::Migration
  def change
    create_table :dining_halls do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
