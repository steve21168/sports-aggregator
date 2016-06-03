class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :abbreviation
      t.string :city
      t.string :state
      t.string :country
      t.string :logo
      t.integer :league_id
      t.timestamps null: false
    end
  end
end
