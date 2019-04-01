class PhotosController < ApplicationController
 before_action :authenticate_user!

    def create
      @place = Place.find(params[:place_id])
      @photo = Photo.new(photo_params)
      @photo.place_id = @place.id
      @photo.user_id = current_user.id
      @photo.save
      redirect_to place_path(@place)
    end

  private

    def photo_params
      params.require(:photo).permit(:picture, :caption)
    end
end
