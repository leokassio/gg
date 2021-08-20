class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.string :country
      t.references :team, index: true, foreign_key: true

      t.timestamps
    end
  end
end
