class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :league_name
      t.string :abbreviation
      t.string :short_name
      t.string :logo

      t.timestamps null: false
    end
  end
end
