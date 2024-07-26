class AssessmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @patient_exercises = PatientExercise.where(patient_id: params[:patient_id])
  end

  def start_session
    @patient_exercise_ids = PatientExercise.where(id: params[:patient_exercise_ids])
  end

  def increment_success

  end

  def increment_failed

  end

  def increment_help

  end
end
