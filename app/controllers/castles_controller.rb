class CastlesController < ApplicationController
  def index
    @castles = Castle.order('id ASC').limit(6)
  end

  def show
    @castles = Castle.order("created_at DESC").page(params[:page]).per(12)
    @castle_ids = Castle.group(:siro_id).order('count_siro_id DESC').limit(5).count(:siro_id).keys
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
    params.require(:castle).permit(:name, :siro_id,:image, :content)
  end

end
