class RoomImagesController < ApplicationController
  def index
    @room_images = RoomImage.all
    render :index
  end

  def show
    @room_image = RoomImage.find_by(id: params[:id])
    render :show
  end

  def create
    @room_image = RoomImage.create(
      room_id: params[:room_id],
      url: params[:url],
    )
    render :show
  end

  def update
    @room_image = RoomImage.find_by(id: params[:id])
    @room_image.update(
      room_id: params[:room_id] || @room_image.room_id,
      url: params[:url] || @room_image.url,
    )
    render :show
  end

  def destroy
    @room_image = RoomImage.find_by(id: params[:id])
    @room_image.destroy
    render json: { message: "Room image successfully destroyed!" }
  end
end
