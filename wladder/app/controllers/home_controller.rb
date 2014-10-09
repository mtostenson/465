load "#{Rails.root}/lib/ladder.rb"
load "#{Rails.root}/lib/words4.rb"

class HomeController < ApplicationController
   def index
      $random1 = dictionary.sample
      $random2 = dictionary.sample
   end
   def result
      @params = params
      $result = false      
   end
end
