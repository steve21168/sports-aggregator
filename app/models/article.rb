class Article < ActiveRecord::Base
  belongs_to :team
  belongs_to :league

  validates :title, uniqueness: true 
end
