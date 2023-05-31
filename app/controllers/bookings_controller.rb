class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.user = current_user
    @booking.car = @car
    if @booking.save!
      redirect_to car_bookings_path(@car)
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end


  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
