class AssessmentsController < ApplicationController
  before_action :authenticate_user!

  def show
    @patient_exercises = PatientExercise.where(patient_id: params[:id])
  end

  def start_session
    @patient_exercises = PatientExercise.where(id: params[:patient_exercise_ids])
    if SessionExercise.where(patient_exercise_id: params[:patient_exercise_ids]).empty?
      ActiveRecord::Base.transaction do
        success = true

        @patient_exercises.each do |patient_exercise|
          session = SessionExercise.new(patient_exercise_id: patient_exercise.id)

          unless session.save
            success = false
            raise ActiveRecord::Rollback
          end
        end

      rescue ActiveRecord::Rollback
        flash[:error] = "Failed to create some sessions."
      end
    end
  end
end
