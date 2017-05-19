class UsersController < ApplicationController

  def show
  end

  def buy_ticket
    if current_user.tickets << Ticket.find(params[:ticket_id])
      redirect_to root_path
      flash[:success] = 'You have bought ticket'
    end
  end

  def remove_ticket
    current_user.tickets.delete(Ticket.find(params[:ticket_id]))
    redirect_to user_path(current_user.id)
    flash[:success] = 'You have removed ticket'
  end
end
