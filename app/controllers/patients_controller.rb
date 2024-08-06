class PatientsController < ApplicationController
  before_action :authenticate_any!

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

  def authenticate_any!
    if user_signed_in? || admin_signed_in?
    else
      render :index
    end
  end
end
