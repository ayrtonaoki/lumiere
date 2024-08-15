class PatientsController < ApplicationController
  before_action :authenticate_user_or_admin!

  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
    @exercises = Exercise.all
  end

  def create
    @patient = Patient.new(name: patient_params[:name])
    @exercises = Exercise.all

    if @patient.save
      PatientExercise.create!(patient_id: @patient.id, exercise_id: patient_params[:exercise_id])

      flash[:message] = 'Paciente criado com sucesso.'

      redirect_to patients_path
    else
      flash[:message] = 'Nome do paciente não pode ficar em branco!'

      redirect_to new_patient_path
    end
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :exercise_id)
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
