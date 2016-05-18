class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :halt_and_send_file

  def index
    raise('ApplicationController#index')
  end

  private

  def halt_and_send_file
    send_file Rails.root.join('halt.txt')
  end
end
