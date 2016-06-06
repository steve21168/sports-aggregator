class CreateMlbBoxscores < ActiveRecord::Migration
  def change
    create_table :mlb_boxscores do |t|
      t.string :home_team_id
      t.string :away_team_id
      t.integer :home_hits
      t.integer :home_runs
      t.integer :home_errors
      t.integer :away_hits
      t.integer :away_runs
      t.integer :away_errors
      t.string :winning_pitcher
      t.string :winning_pitcher_record
      t.string :losing_pitcher
      t.string :losing_pitcher_record
      t.string :save_pitcher
      t.string :save_pitcher_save_count
      t.string :total_innings
      t.string :duration
      t.date :game_date
      t.timestamps null: false
    end
  end
end
