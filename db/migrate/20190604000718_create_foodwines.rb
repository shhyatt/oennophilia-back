class CreateFoodwines < ActiveRecord::Migration[5.2]
  def change
    create_table :foodwines do |t|
      t.integer :food_id
      t.integer :wine_id

      t.timestamps
    end
  end
end
