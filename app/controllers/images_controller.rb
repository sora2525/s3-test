class ImagesController < ApplicationController
    def index
      @images = Image.all
    end

    def new
      @image = Image.new
    end

    def create
      @image = Image.new(image_params)
      if @image.save
        redirect_to images_path, notice: "画像がアップロードされました。"
      else
        render :new, alert: "画像のアップロードに失敗しました。"
      end
    end

    private

    def image_params
      params.require(:image).permit(:title, :file)
    end
end
