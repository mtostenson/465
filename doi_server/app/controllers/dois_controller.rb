class DoisController < ApplicationController
  before_action :set_doi, only: [:show, :edit, :update, :destroy]

  # GET /dois
  def index
    @dois = Array.new
    if params[:search_string] != nil
        @search_query = params[:search_string]
        Doi.all.each do |cur_doi|
            reg = Regexp.new params[:search_string]
            if cur_doi.name =~ reg
                @dois.push cur_doi
            end
        end
    end
  end

  # GET /dois/1
  def show
    @url = @doi.urls.new
  end

  # GET /dois/new
  def new
    @doi = Doi.new
    @doi.urls.new
  end

  # GET /dois/1/edit
  def edit
  end

  # POST /dois
  def create
    @doi = Doi.new(doi_params)

    if @doi.save
      redirect_to @doi, notice: 'Doi was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /dois/1
  def update
    if @doi.update(doi_params)
      redirect_to @doi, notice: 'Doi was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /dois/1
  def destroy
    @doi.destroy
    redirect_to dois_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doi
      @doi = Doi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doi_params
      params.require(:doi).permit(:name, :desc, urls_attributes: [:url])
    end
end