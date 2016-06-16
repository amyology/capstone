class Product < ActiveRecord::Base

  has_many :traincases
  has_many :wishlists
  has_many :users, through: :wishlists
  has_many :users, through: :traincases
  has_many :votes
  has_many :tags

end
