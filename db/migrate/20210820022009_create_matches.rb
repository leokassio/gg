class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.belongs_to :tournament, index: true
      t.belongs_to :team_1_id, index: true, foreign_key { to_table: :teams }
      t.belongs_to :team_2_id, index: true, foreign_key { to_table: :teams }
      t.datetime :started_at

      t.timestamps
    end
  end
end
