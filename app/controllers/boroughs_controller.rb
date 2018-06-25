class BoroughsController < ApplicationController

  def index
    @boroughs = Borough.all
  end

  def show
    find_borough
  end

  def new
    @borough = Borough.new
  end

  def create
    @borough.new(borough(params))
    #validation
  end

  def edit
    find_borough
  end

  def update
    @borough = Borough.find(params[:id])
    @borough.update(borough(params))
    #validation
  end

  def destroy
    find_borough.destroy
  end

  private

  def find_borough
    @borough = Borough.find(params[:id])
  end

  def borough_params
    params.require(:borough).permit(:name)
  end


end
