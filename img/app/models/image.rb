class Image < ActiveRecord::Base

    has_many :tags, dependent: :destroy
    
    def name
        filename
    end

end
