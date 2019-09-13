class CitadelsController < ApplicationController
  def index
    @citadels = Citadel.order('id ASC').page(params[:page]).per(14)
  end

  def show
    @citadels = Citadel.find(params[:id])
  end
end
