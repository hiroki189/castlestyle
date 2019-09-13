class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search
  protected
  
  def configure_permitted_parameters
    added_attrs = [ :email, :name, :password  ]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end

   def set_search
    @search = Citadel.ransack(params[:q])
    @search_citadels = @search.result(distinct: true)
   end
end
