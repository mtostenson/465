
class UrlsController < ApplicationController
  before_action :set_url, only: [:edit, :update, :destroy]

  # GET /dois/:doi_id/urls
  def index
    # index is now all the urls for a single doi (not all the urls)
    # the URL will contain the id of the current doi (:doi_id)
    # use the :doi_id parameter to find all the urls
    @doi = Doi.find params[:doi_id]
    # the has_many function called in app/models/doi.rb created the 
    # function "urls" which will return an array of all the urls 
    # with the doi foreign key matching @doi
    @urls = @doi.urls
  end

  # GET dois/:doi_id/urls/new
  # Create a new url in the context of a Doi object
  # that way the Url's foreign key (doi_id) will be
  # initialized correctly.
  def new
    # since our the url new path contains the doi's id
    # we can use params[:doi_id] to get that id
    @doi = Doi.find params[:doi_id]

    # This is similar to Url.new, BUT it creates the new url
    # in the context of a Doi object and sets the foreign key
    @url = @doi.urls.new
  end

  # GET /urls/1/edit
  def edit
    # edit routes are not nested (we already know our doi's foreign_key)
  end

  # POST dois:/:doi_id/urls
  # we need the doi's key in the URL to make sure that someone 
  # isn't trying to hack the id of the new url's doi
  # rails ensures that the URL has not be tampered with
  def create
    @doi = Doi.find params[:doi_id]
    @url = @doi.urls.new(url_params)

    if @url.save
      redirect_to doi_urls_url(@doi) , notice: 'Url was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /urls/1
  # updates don't have to be nested because the doi foreign key is already set
  # and cannot be changed by edit (note that doi_id is not permitted in url_params())
  def update
    if @url.update(url_params)
      redirect_to doi_urls_url(@url.doi), notice: 'Url was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /urls/1
  def destroy
    @url.destroy
    redirect_to doi_urls_url(@url.doi) , notice: 'Url was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_url
      @url = Url.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def url_params
      params.require(:url).permit(:url)
    end
end