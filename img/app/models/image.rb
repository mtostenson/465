class Image < ActiveRecord::Base
  belongs_to :user
  belongs_to :tag
  
  def name
    '1234'
  end
  
  def generate_filename
    (0...8).map { (65 + rand(26)).chr }.join
  end
  
end
