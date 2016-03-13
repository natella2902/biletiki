class WagonsController < ApplicationController
  before_action :set_train, only: [:new, :create]

  def new
    @wagon = Wagon.new
  end

  def create
    @wagon = @train.wagons.new(wagon_params)
    if @wagon.save
      redirect_to @train
    else
      render :new
    end
  end

  def show
    @wagon = Wagon.find(params[:id])
  end

  protected

  def set_train
    @train = Train.find(params[:train_id])
  end

  def wagon_params
    params.require(:wagon).permit(:number, :top_place, :bottom_place, :side_top_place,
                                  :side_bottom_place, :seat_place, :type)
  end
end