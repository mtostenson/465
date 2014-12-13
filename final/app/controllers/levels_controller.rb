class LevelsController < ApplicationController
  
  skip_before_filter  :verify_authenticity_token

  before_action :set_level, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @levels = Level.all
    respond_with(@levels)
  end

  def show
    @user = current_user
    @topscore = @level.scores.order("score DESC").first
    respond_with(@level)
  end

  def new
    @level = Level.new
    respond_with(@level)
  end

  def over
    Score.create(:score => params[:score], :user_id => params[:user_id], :level_id => params[:level_id])
  end
  
  def edit
  end

  def create
    @level = Level.new(level_params)
    @level.user = current_user
    @level.save
    respond_with(@level)
  end

  def update
    @level.update(level_params)
    respond_with(@level)
  end

  def destroy
    @level.destroy
    respond_with(@level)
  end
  
  def submit_score
    @score = Score.new
    @score.save
  end

  private
    def set_level
      @level = Level.find(params[:id])
    end

    def level_params
      params.require(:level).permit(:title, :content)
    end
end
