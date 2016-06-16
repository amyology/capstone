class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  belongs_to :dupe

  def count
    
  end

end
