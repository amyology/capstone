class Dupe < ActiveRecord::Base

  belongs_to :product, foreign_key: 'secondary_id'
  has_many :votes

  # def product
  #   Product.find_by(id: self.secondary_id)
  # end
end
