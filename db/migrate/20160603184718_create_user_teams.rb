class CreateUserTeams < ActiveRecord::Migration
  def change
    create_table :user_teams do |t|
      t.integer :team_id
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
