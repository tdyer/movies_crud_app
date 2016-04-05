class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  # Prevent access to non-logged in users for any actions
  # in controllers that are subclassed.
  before_action :authenticate_user!
end
