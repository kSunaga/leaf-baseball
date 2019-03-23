class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.string :name
      t.string :email
      t.text :content
      t.references :board, foreign_key: true

      t.timestamps
    end
  end
end
