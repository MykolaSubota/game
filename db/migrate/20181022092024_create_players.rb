class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :nickname
      t.string :rank
      t.string :charisma
      t.string :wisdom

      t.timestamps
    end
  end
end
