class Level < ActiveRecord::Base
  
  has_many :scores
  belongs_to :user
  
end
