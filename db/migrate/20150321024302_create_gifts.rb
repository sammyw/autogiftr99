class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :image

      t.timestamps null: false
    end
  end
end
