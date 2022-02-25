class BookingsController < ApplicationController
  before_action :set_booking, only: [:update, :update_status]
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
    if @booking.save
      redirect_to my_bookings_path
    else
      render :new
    end
  end

  def my_bookings
  end

  def owner_bookings
  end

  def update_status
    new_status = params[:booking][:status].to_i
    case new_status
    when 1 then @booking.status_Accepted!
    when 2 then @booking.status_Declined!
    end
    redirect_to my_owner_bookings_path
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
