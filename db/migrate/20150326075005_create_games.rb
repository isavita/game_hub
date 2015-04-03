class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :genre
      t.integer :state
      t.belongs_to :user, index: true
      t.string :producer
      t.integer :rank

      t.timestamps null: false
    end
  end
end
