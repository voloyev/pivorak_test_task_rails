class BusesController < ApplicationController

  def new
    @bus = Bus.new
  end

  def create
    @bus = Bus.new(bus_params)
    if @bus.save
      redirect_to root_path
      flash[:succes] = 'Bus added'
    else
      render 'new'
    end
  end

  def show
  end

  def index
    @buses = Bus.all
  end

  private

  def bus_params
    params.require(:bus).permit(:name, :from, :to, :date_from, :date_to, :time_from, :time_to)
  end

  def set_bus
    @bus = Bus.find(params[:id])
  end
end
