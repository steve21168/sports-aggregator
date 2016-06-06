class AddConstraintsToUser < ActiveRecord::Migration
  def change
    change_column(:users, :email, :string, null: false)
    change_column_default(:users, :email, "")
  end
end
