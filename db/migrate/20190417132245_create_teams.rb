class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :description
      t.text :body
      t.references :user, foreign_key: true
      t.references :level, foreign_key: true

      t.timestamps
    end
  end
end
