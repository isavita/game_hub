class AddNicknameAndClanToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nickname, :string
    add_column :users, :clan, :string
  end
end
