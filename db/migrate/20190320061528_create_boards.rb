class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.string :name
      t.string :place
      t.date :game_date
      t.integer :level
      t.text :content

      t.timestamps
    end
  end
end
