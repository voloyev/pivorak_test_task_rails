class BusesController < ApplicationController
  load_and_authorize_resource except: [:index, :show]

  def index
    @buses = Bus.all
  end

  def show
    authenticate_user!

    @bus = set_bus
  end

  def new
    authenticate_user!

    @bus = Bus.new
  end

  def create
    authenticate_user!

    @bus = Bus.new(bus_params)
    if @bus.save
      redirect_to root_path
      flash[:success] = 'Bus added'
    else
      render 'new'
    end
  end

  def edit
    authenticate_user!
  end

  def update
    authenticate_user!

    bus = set_bus
    if bus.update(bus_params)
      flash[:success] = "Bus #{bus.name} updated"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    authenticate_user!

    bus = set_bus

    if bus.destroy
      flash[:success] = "Bus #{bus.name} deleted"
      redirect_to root_path
    else
      render 'show'
    end
  end

  private

  def bus_params
    params.require(:bus).permit(:from,
                                :to,
                                :seats,
                                :departure,
                                :arrival)
  end

  def set_bus
    Bus.find(params[:id])
  end
end
