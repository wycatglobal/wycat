class ImagesController < ApplicationController
  def new
  	@image = Image.new
  end

  def create
    @image = Image.new(image_params)

    if @image.save
      flash[:notice] = "Image Saved!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])

    if @image.update(image_params)
      flash[:notice] = "Image Updated!"
      redirect_to images_path
    else
      render 'edit'
    end
  end

  def destroy
    @image  = Image.find(params[:id])
    @image.destroy

    redirect_to images_path
  end

  def index
  	@albums = Album.all
  end

  private

  def image_params
    params.require(:image).permit(:image, :image_description, :album_id, :image_title, :image_file_size, :image_content_type, :remote_image_url)
  end
end
