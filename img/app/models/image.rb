class Image < ActiveRecord::Base
  belongs_to :user

  has_many :tags, dependent: :destroy
  has_many :image_users, dependent: :destroy
  has_many :users, through: :allows
  
  accepts_nested_attributes_for :tags, reject_if: lambda { |attributes| attributes['tag'].blank? }
  
  def generate_filename
    (0...8).map { (65 + rand(26)).chr }.join
  end
  
end
