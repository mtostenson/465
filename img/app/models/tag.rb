class Tag < ActiveRecord::Base

  belongs_to :image
  validates :tag, presence: true
end
