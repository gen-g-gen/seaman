class Point < ApplicationRecord

  belongs_to :area
  has_many :messages
  has_many :users
  
  # has_many :user_points
  # has_many :users, through: :user_points


end
