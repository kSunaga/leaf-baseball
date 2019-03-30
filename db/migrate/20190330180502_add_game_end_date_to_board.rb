class AddGameEndDateToBoard < ActiveRecord::Migration[5.2]
  def change
    rename_column :boards, :game_date, :game_start_date
    add_column :boards, :game_end_date, :date, after: :game_start_date
  end
end
