class PatientsController < ApplicationController
  before_action :authenticate_user_or_admin!

  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to patients_path
    else
      render :new
    end
  end

  private

  def patient_params
    params.require(:patient).permit(:name)
  end

  def authenticate_user_or_admin!
    if user_signed_in?
      return true
    elsif admin_signed_in?
      return true
    else
      redirect_to new_user_session_path, alert: 'You need to sign in first.'
    end
  end
end
