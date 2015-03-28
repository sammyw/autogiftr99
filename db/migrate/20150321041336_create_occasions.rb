class CreateOccasions < ActiveRecord::Migration
  def change
    create_table :occasions do |t|
      t.string :occasion_type
      t.date :date
      t.text :description
      t.text :message
      t.references :recipient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
