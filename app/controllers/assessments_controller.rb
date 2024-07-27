class AssessmentsController < ApplicationController
  before_action :authenticate_user!

  def show
    @patient_exercises = PatientExercise.where(patient_id: params[:id])
  end

  def start_session
    @patient_exercise_ids = PatientExercise.where(id: params[:patient_exercise_ids])
  end
end
