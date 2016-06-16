class Product < ActiveRecord::Base

  has_many :traincases
  has_many :wishlists
  has_many :users, through: :wishlists
  has_many :same_users, through: :traincases, source: :user
  has_many :votes
  has_many :tags
  has_many :dupes, foreign_key: "primary_id"
  has_many :products, through: :dupes

  # def wishlists
  #   Wishlist.where(product_id: self.id)
  # end

  # [wishlist_1, wishlist_2, wishlist_3]

  # def users
  #   collection = []
  #   self.wishlists.each do |wishlist|
  #     collection << wishlist.users
  #   end
  #   collection.flatten
  # end

  # def products
  #   collection = []
  #   self.dupes.each do |dupe|
  #     collection << dupe.product
  #   end
  #   collection.flatten
  # end

  # [user, user, user,user,user, user]

  # def dupes
  #   Dupe.where(primary_id: self.id)
  # end

end
