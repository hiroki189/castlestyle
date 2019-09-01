class CastlesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @castle = Castle.new
    # binding.pry
  end

  def create
    Castle.create(castle_params)
  end

  def castle_params
    params.require(:castle).permit(:name,:image)
  end
end
