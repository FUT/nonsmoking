class ApplicationController < ActionController::Base
  respond_to :html

  def forem_user
    current_user
  end
  helper_method :forem_user

  protect_from_forgery
end
