class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  # GET /images
  def index
    @images = Image.all
    if current_user
      @current_user_images = current_user.images
    end
  end

  # GET /images/1
  def show
    @tag = @image.tags.new
    @image_user = @image.image_users.new    
  end
  
  # GET /images/new
  def new
    @image = Image.new    
    @image.tags.new
    @image.image_users.new    
  end

  # GET /images/1/edit
  def edit
  end

  # POST /images
   def create
     @image = Image.new(image_params)
     @image.generate_filename
     @image.user = current_user
 
     @uploaded_io = params[:image][:uploaded_file]
 
     File.open(Rails.root.join('public', 'images', @image.filename), 'wb') do |file|
         file.write(@uploaded_io.read)
     end
 
     if @image.save
       redirect_to @image, notice: 'Image was successfully created.'
     else
       render :new
     end
   end

  # PATCH/PUT /images/1
  def update
    if @image.update(image_params)
      redirect_to @image, notice: 'Image was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /images/1
  def destroy
    @image.destroy
    redirect_to images_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.require(:image).permit(:filename, :priv, tags_attributes: [:tag], image_users_attributes: [:user_id, :image_id])
    end
end