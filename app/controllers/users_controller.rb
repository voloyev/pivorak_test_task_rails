class UsersController < ApplicationController
  before_action :find_user_id
  
  def show; end

  def buy_ticket
    ticket = Ticket.find(params[:ticket_id])
    if current_user.tickets << ticket
      ticket.bus.update(seats: ticket.bus.seats - 1)
      redirect_to root_path
      flash[:success] = 'You have bought ticket'
    end
  end

  def remove_ticket
    Ticket.find(params[:ticket_id]).bus.update(seats: Ticket.find(params[:ticket_id]).bus.seats + 1)
    if current_user.tickets.delete(Ticket.find(params[:ticket_id]))
      flash[:success] = 'You have removed ticket'
    else
      flash[:alert] = 'Some errors'
    end

    redirect_to user_path(@user_id)
  end

  private

  def find_user_id
    @user_id = current_user.id
  end
end
