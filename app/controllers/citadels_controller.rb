class CitadelsController < ApplicationController
  def index
    @citadels = Citadel.all
  end

  def show
  end
end
