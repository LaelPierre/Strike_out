class BookingsController < ApplicationController
  before_action :set_booking, only: [:update]
  before_action :set_striker, only: [:new, :create]
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.client = current_user
    @booking.striker = @striker
    @booking.duration = (@booking.end_date - @booking.start_date).to_i
    @booking.price = @striker.price * @booking.duration
    @booking.save
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :renter_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_striker
    @striker = Striker.find(params[:striker_id])
  end
end
