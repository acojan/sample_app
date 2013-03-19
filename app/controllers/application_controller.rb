class ApplicationController < ActionController::Base
  before_filter :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_filter :admin_user,     only: :destroy

  protect_from_forgery
  include SessionsHelper

  private

  def admin_user
    redirect_to(root_path) unless current_user.admin?
  end
  
  def signed_in_user
    flash[:notice] = "Please sign in." unless signed_in?
    redirect_to signin_url unless signed_in?
  end

end
