class AddPassengerIdToTickets < ActiveRecord::Migration
  def change
    add_belongs_to :tickets, :passenger
  end
end
