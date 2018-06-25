class NationsController < ApplicationController

  def index
    @nations = Nation.all
  end

  def show
    find_nation
  end

  def new
    @nation = Nation.new
  end

  def create
    @nation.new(nation(params))
    #validation
  end

  def edit
    find_nation
  end

  def update
    @nation = Nation.find(params[:id])
    @nation.update(nation(params))
    #validation
  end

  def destroy
    find_nation.destroy
  end

  private

  def find_nation
    @nation = Nation.find(params[:id])
  end

  def nation_params
    params.require(:nation).permit(:name, :continent_id)
  end


end
