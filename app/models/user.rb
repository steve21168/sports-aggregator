class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_teams
  has_many :teams, through: :user_teams
  has_many :user_leagues
  has_many :leagues, through: :user_leagues
end
