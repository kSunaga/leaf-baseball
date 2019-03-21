class AddPasswordToBoard < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :password, :string, after: :content
  end
end
