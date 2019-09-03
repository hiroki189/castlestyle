class CastlesController < ApplicationController
  def index
    @castle = Castle.all.limit(6)
  end

  def show
  end

  def new
    redirect_to new_user_session_path unless user_signed_in?
    @castle = Castle.new
    # binding.pry
  end

  def create
    Castle.create(castle_params)
    redirect_to controller: :castles, action: :index
  end

  private
  def castle_params
    params.require(:castle).permit(:name,:image, :content)
  end
end
