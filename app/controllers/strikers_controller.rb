class StrikersController < ApplicationController
  before_action :set_striker, only: [:show, :destroy]

  def index

    if params[:query].present?
      @strikers = Striker.near(params[:query], 50)
    else
      @strikers = Striker.all
    end

    @markers = @strikers.geocoded.map do |striker|
      {
        lat: striker.latitude,
        lng: striker.longitude,
        info_window: render_to_string(partial: "info_window", locals: { striker: striker }),
        image_url: helpers.asset_url("protester.png")
      }
    end
  end

  def show
  end

  def new
    @striker = Striker.new
  end

  def create
    @striker = Striker.new(striker_params)
    @striker.renter = current_user
    if @striker.save
      redirect_to striker_path(@striker), notice: 'striker was successfully created.'
    else
      render :new
    end
  end

  def my_strikers
    @strikers = current_user.strikers
  end

  def destroy
    @striker.destroy
    redirect_to strikers_path, notice: 'striker was successfully destroyed.'
  end

  private

  def set_striker
    @striker = Striker.find(params[:id])
  end

  def striker_params
    params.require(:striker).permit(:war_tag, :description, :address, :price, photos: [])
  end
end
