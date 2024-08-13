class HomeController < ApplicationController
  def index
    if admin_signed_in?
      redirect_to backoffice_path
    elsif user_signed_in?
      redirect_to patients_path
    end
  end
end
