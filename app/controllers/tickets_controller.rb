class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]
  def index
    @tickets = Ticket.all
  end

  def show
  end

  def new
    @ticket = Ticket.new
  end

  def edit
  end

  def create
    @ticket = Ticket.new(ticket_params)

    respond_to do |format|
      if @ticket.save
        format.html { redirect_to @ticket, notice: 'Ticket was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to @ticket, notice: 'Ticket was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to tickets_path, notice: 'Ticket was successfully destroyed.' }
    end
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:number, :first_station_id, :last_station_id, :owner, :train_id)
  end
end
