class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  before_filter :authenticate_user!
  
  protect_from_forgery with: :exception
  
  helper_method :new_score
  
  def new_score(score, level, user)
    Score.create(:score => score, :level_id => level, :user_id => user)
  end
end
