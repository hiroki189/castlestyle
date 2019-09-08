class CastlesController < ApplicationController
  def index
    @castles = Castle.all.limit(6)
  end

  def show
    @castles = Castle.order("created_at DESC").page(params[:page]).per(4)
  end

  def new
    redirect_to new_user_session_path unless user_signed_in?
    @castle = Castle.new
  end

  def create
    Castle.create(castle_params)
    redirect_to controller: :castles, action: :index
  end

  private
  def castle_params
    params.require(:castle).permit(:name,:castle_area,:image, :content)
  end
end
