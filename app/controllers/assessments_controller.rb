class AssessmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @patient_exercises = PatientExercise.where(patient_id: params[:patient_id])
  end
end
