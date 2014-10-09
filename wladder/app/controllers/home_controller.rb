load "#{Rails.root}/lib/ladder.rb"
load "#{Rails.root}/lib/words4.rb"

class HomeController < ApplicationController
   def index
      $random1 = dictionary.sample
      $random2 = dictionary.sample
   end
   def result       
	   @guesses = Array.new
	   if params[:one] != ""
	      @guesses.push params[:one]
	   end
	   if params[:two] != ""
	      @guesses.push params[:two]
	   end
	   if params[:three] != ""
	      @guesses.push params[:three]
	   end
	   if params[:four] != ""
	      @guesses.push params[:four]
	   end
	   if params[:five] != ""
	      @guesses.push params[:five]
	   end
	   @guesses.each_with_index do |guess, i|
	      $winner = legal @guesses
	      if guess == @guesses.first
	         if not edit_distance_of_one($random1, guess)
	            $winner = false
	         end
	      elsif guess == @guesses.last
	         if not edit_distance_of_one(guess, $random2)
	            $winner = false
	         end
	      elsif edit_distance_of_one(guess, @guesses[i+1])
	         $winner = false	      
	      end
	   end
	   if not edit_distance_of_one($random1, params[:one])
	      $winner = false   
	   end	   
   end
end
