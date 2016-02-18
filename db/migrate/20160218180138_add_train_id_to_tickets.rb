class AddTrainIdToTickets < ActiveRecord::Migration
  def change
    add_belongs_to :tickets, :train
    add_belongs_to :tickets, :first_station
    add_belongs_to :tickets, :last_station
  end
end
