class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.string :name
      t.string :street_address
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :relationship
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
