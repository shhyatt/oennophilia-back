class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :catagory
      t.string :variety
      t.string :description
      t.string :img

      t.timestamps
    end
  end
end
