class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception, only: []
  def page_title
    'EpiFactors Database'
  end
  helper_method :page_title
  after_action :allow_iframe

protected
  def allow_iframe
    response.headers.except! 'X-Frame-Options'
  end
end
