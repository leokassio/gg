class CreateTournaments < ActiveRecord::Migration[6.1]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.string :country
      t.string :logo

      t.timestamps
    end
  end
end
