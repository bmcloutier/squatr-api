class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    render :index
  end

  def show
    @reservation = Reservation.find_by(id: params[:id])
    render :show
  end

  def create
    @reservation = Reservation.create(
      user_id: params[:user_id],
      room_id: params[:room_id],
      start_date: params[:start_date],
      end_date: params[:end_date],
      price: params[:price],
      total: params[:total],
    )
    render :show
  end

  def update
    @reservation = Reservation.find_by(id: params[:id])
    @reservation.update(
      user_id: params[:user_id] || @reservation.user_id,
      room_id: params[:room_id] || @reservation.room_id,
      start_date: params[:start_date] || @reservation.start_date,
      end_date: params[:end_date] || @reservation.end_date,
      price: params[:price] || @reservation.price,
      total: params[:total] || @reservation.total,
    )
    render :show
  end

  def destroy
    @reservation = Reservation.find_by(id: params[:id])
    @reservation.destroy
    render json: { message: "The reservation has been destroyed!" }
  end
end
