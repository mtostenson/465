class Url < ActiveRecord::Base
  
  validates :url, presence: true
  
  belongs_to :doi
  
end
