class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :tag
      t.string :full_name
      t.string :country
      t.string :logo

      t.timestamps
    end
  end
end
