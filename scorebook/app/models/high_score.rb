class HighScore < ActiveRecord::Base

    validates :user, presence: true
    validates :game, presence: true
    validates :score, presence: true, numericality: {greateer_than_or_equal_to: 0}

end;