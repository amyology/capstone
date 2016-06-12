class User < ActiveRecord::Base

  has_many :traincases
  has_many :wishlists
  has_many :products, :through => :traincases
  has_many :products, :through => :wishlists

end
