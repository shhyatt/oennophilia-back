class CreateFavoriteWines < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_wines do |t|
      t.integer :wine_id
      t.integer :user_id

      t.timestamps
    end
  end
end
