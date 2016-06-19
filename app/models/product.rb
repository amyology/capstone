class Product < ActiveRecord::Base

  validates :name, presence: true, length: { maximum: 20 }
  validates :brand, presence: true, length: { maximum: 40 }
  validates :product_type, presence: true, length: { maximum: 20 }
  validates :product_color, presence: true, length: { maximum: 20 }
  validates :image, presence: true

  has_many :traincases
  has_many :wishlists
  has_many :users, through: :wishlists
  has_many :same_users, through: :traincases, source: :user
  has_many :votes

  has_many :dupes, foreign_key: "primary_id"
  has_many :products, through: :dupes

  has_many :tags, through: :dupes
  
end
