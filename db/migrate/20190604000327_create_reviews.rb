class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :foodwine_id
      t.integer :user_id
      t.string :review
      t.integer :rating

      t.timestamps
    end
  end
end
