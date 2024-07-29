class AssessmentsController < ApplicationController
  before_action :authenticate_user!

  def show
    @patient_exercises = PatientExercise.where(patient_id: params[:id])
    @patient_exercises.update_all(attempts: 0)
  end

  def start_session
    @patient_exercises = PatientExercise.where(id: params[:patient_exercise_ids]).order(:id)
  end
end
