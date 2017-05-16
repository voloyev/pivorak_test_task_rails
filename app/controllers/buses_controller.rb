class BusesController < ApplicationController
  before_action :set_bus, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: :index

  def index
    @buses = Bus.all
  end

  def show
  end

  def new
    @bus = Bus.new
  end

  def create
    @bus = Bus.new(bus_params)
    if @bus.save
      redirect_to root_path
      flash[:success] = 'Bus added'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @bus.update(bus_params)
      flash[:success] = "Bus #{@bus.name} updated"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    if @bus.destroy
      flash[:success] = "Bus #{@bus.name} deleted"
      redirect_to root_path
    else
      render 'show'
    end
  end

  private

  def bus_params
    params.require(:bus).permit(:name, :from, :to, :seats, :departure,
                                :arrival)
  end

  def set_bus
    @bus = Bus.find(params[:id])
  end
end
