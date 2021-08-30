class CreateTeamMatchParticipations < ActiveRecord::Migration[6.1]
  def change
    create_table :team_match_participations do |t|
      t.belongs_to :team
      t.belongs_to :match

      t.timestamps
    end
  end
end
