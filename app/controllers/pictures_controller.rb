class PicturesController < ApplicationController
  def index
    @Pictures = Picture.all
  end

  def new
    @pictures = Picture.new
  end

  def create
    Picture.create(picture_params)
    redirect_to new_picture_path
  end

  def show
    
  end

  private

  def picture_params
    params.require(:picture).permit(:image, :content)
  end
end
