class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  after_action :prepare_unobtrusive_flash
  rescue_from ActiveRecord::StatementInvalid, with: :catchthis

  private
  def catchthis
    flash[:error] = "Please enter a field"
    redirect_back(fallback_location: reports_compare_projects_path)
  end
end
