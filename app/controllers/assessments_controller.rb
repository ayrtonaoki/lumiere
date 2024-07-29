class AssessmentsController < ApplicationController
  before_action :authenticate_user!

  def show
    @patient_exercises = PatientExercise.where(patient_id: params[:id]).order(:id)
    @patient_exercises.update_all(attempts: 0)
  end

  def start_session
    if params[:patient_exercise_ids].nil?
      flash[:alert] = 'Selecione ao menos um exercício para iniciar a avaliação.'
      redirect_back(fallback_location: root_path)
    end

    @patient_exercises = PatientExercise.where(id: params[:patient_exercise_ids]).order(:id)
  end
end
