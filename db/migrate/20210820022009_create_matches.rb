class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.belongs_to :tournament, index: true
      t.datetime :played_at

      t.timestamps
    end
  end
end
