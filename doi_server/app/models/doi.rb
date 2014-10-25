class Doi < ActiveRecord::Base

    has_many :urls, dependent: :destroy
    
end
