class ChangeDefaultPicture < ActiveRecord::Migration
  def change
    change_column_default(:users, :avatar, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7-xPcyaHXdgXwYQ4ST76XqR02iYtclqjfGUXcN6NSmjgZbDsCRA')
  end
end
