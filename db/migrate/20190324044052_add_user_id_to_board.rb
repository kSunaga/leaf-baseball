class AddUserIdToBoard < ActiveRecord::Migration[5.2]
  def change
    add_reference :boards, :user, foreign_key: true, after: :password
  end
end
