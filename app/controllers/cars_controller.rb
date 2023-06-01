class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @booking = Booking.new
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def my_cars
    @cars = Car.where(user: current_user)
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to car_path(@car)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    if @car.save
      redirect_to car_path(@car)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to my_cars_path, status: :see_other
  end

  private

  def car_params
    params.require(:car).permit(:brand, :model, :year, :description, :photo)
  end

end
