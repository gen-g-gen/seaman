class Point < ApplicationRecord

  has_many :messages
  belongs_to :area
  
  has_many :user_points
  has_many :users, through: :user_points


end
