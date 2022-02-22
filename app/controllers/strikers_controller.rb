class StrikersController < ApplicationController
  def index
    @strikers = Striker.all
  end

  def show
    @striker = Striker.new
  end

  def new
  end

  def create
  end

  def my_strikers
  end

  def destroy
  end
end
