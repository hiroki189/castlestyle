class CastlesController < ApplicationController
  def index
    @castles = Castle.order('id ASC').limit(6)
  end

  def show
    @castles = Castle.order("created_at DESC").page(params[:page]).per(4)
    castle_ids = Castle.group(:citadel_id).order('count_citadel_id DESC').limit(5).count(:citadel_id).keys
    # @ranking = castle_ids.map {|id| Castle.find(id)}
    # binding.pry
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
    params.require(:castle).permit(:name,:citadel_id,:image, :content)
  end

end
