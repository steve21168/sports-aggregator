class CreateNbaBoxscores < ActiveRecord::Migration
  def change
    create_table :nba_boxscores do |t|
      t.string :home_team_id
      t.string :away_team_id
      t.integer :home_team_score
      t.integer :away_team_score
      t.timestamps null: false
    end
  end
end
