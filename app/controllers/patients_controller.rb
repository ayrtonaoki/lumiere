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
    patient = Patient.new(name: patient_params[:name])
    exercise_ids = params[:exercise_ids]

    if patient.save
      begin
        ActiveRecord::Base.transaction do
          exercise_ids.each do |id|
            PatientExercise.create!(patient_id: patient.id, exercise_id: id)
          end
        end
        flash[:message] = 'Paciente criado com sucesso.'

        redirect_to patient_exercise_path(patient.id)

      rescue ActiveRecord::RecordInvalid => e
        redirect_to new_patient_path(patient_id: patient_id), alert: "Failed to assign exercises: #{e.message}"
      end
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
