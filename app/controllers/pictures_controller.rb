class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to pictures_path, notice: "投稿出来ました！"
    else
      render :new
  end
end

  def show
    @picture = Picture.find(params[:id])
  end


  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])
    if @picture.update(picture_params)
      redirect_to pictures_path, notice: "投稿内容を編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @blog.destroy
    redirect_to pictures_path, notice:"投稿を削除しました！"
  end

  private

  def picture_params
    params.require(:picture).permit(:content, :text)
  end

  def set_picture
    @picture = Picture.find(params[:id])
  end
end
