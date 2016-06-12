class Product < ActiveRecord::Base

  belongs_to :color
  belongs_to :traincase
  belongs_to :wishlist
  has_many :tags

end
