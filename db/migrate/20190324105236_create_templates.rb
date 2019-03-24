class CreateTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :templates do |t|
      t.string :title
      t.string :name
      t.string :email
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
