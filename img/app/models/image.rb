class Image < ActiveRecord::Base
  belongs_to :user

  has_many :tags, dependent: :destroy
  has_many :image_users, dependent: :destroy
  has_many :users, through: :image_users
  
  accepts_nested_attributes_for :tags, reject_if: lambda { |attributes| attributes['tag'].blank? }
  
  def generate_filename
    self.filename = (0...8).map { (65 + rand(26)).chr }.join.to_s + '.jpg'    
  end

  def blocked_users
    (User.all - self.users).map { |user| [user.name + ' | ' + user.email, user.id] if user!= self.user}.compact
  end
    
end
